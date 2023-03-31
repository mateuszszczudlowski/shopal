import 'package:flutter/material.dart';
import 'package:template/src/config/theme/contants.dart';
import 'package:template/src/modules/main_screen/widgets/specialist_card.dart';

class SpecialistList extends StatelessWidget {
  const SpecialistList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: kListViewHeightMobile,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 3,
        itemBuilder: ((context, index) {
          return const SpecialistCard();
        }),
      ),
    );
  }
}
