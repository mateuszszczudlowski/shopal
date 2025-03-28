import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:template/src/config/theme/contants.dart';
import 'package:template/src/models/specialist_data.dart';
import 'package:template/src/modules/main_screen/widgets/specialist_card.dart';
import 'package:template/src/repositories/supabase_repository/supabase_repository.dart';
import 'package:template/src/widgets/skeleton_loader.dart';

class SpecialistList extends StatelessWidget {
  const SpecialistList({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<dynamic>(
        stream: context.read<ISupabaseRepository>().getSpecialistList(),
        builder: (context, snapshot) {
          if (!snapshot.hasData &&
              snapshot.connectionState == ConnectionState.waiting) {
            return const SkeletonLoader();
          }
          return SizedBox(
            width: double.infinity,
            height: kSpecialistImage2,
            child: ListView.builder(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: snapshot.data.length,
              itemBuilder: ((context, index) {
                SpecialistData specialistData =
                    SpecialistData.fromJson(snapshot.data[index]);
                return SpecialistCard(
                  specialistData: specialistData,
                );
              }),
            ),
          );
        });
  }
}
