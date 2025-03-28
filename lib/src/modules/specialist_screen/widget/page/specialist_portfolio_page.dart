import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:template/src/config/routes.dart';
import 'package:template/src/config/theme/contants.dart';
import 'package:template/src/models/specialist_data.dart';
import 'package:template/src/modules/specialist_screen/bloc/specialist_view_bloc.dart';

class SpecialistPortfolioPage extends StatefulWidget {
  final SpecialistData specialistData;
  const SpecialistPortfolioPage({super.key, required this.specialistData});

  @override
  State<SpecialistPortfolioPage> createState() =>
      _SpecialistPortfolioPageState();
}

class _SpecialistPortfolioPageState extends State<SpecialistPortfolioPage> {
  @override
  void initState() {
    context.read<SpecialistViewBloc>().add(
        SpecialistViewEvent.getPortfolioList(widget.specialistData.portfolio!));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SpecialistViewBloc, SpecialistViewState>(
      builder: (context, state) {
        return SizedBox(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            child: ListView.builder(
              itemCount: state.portfolioShowcases!,
              padding: EdgeInsets.zero,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: ClipRRect(
                    borderRadius: kDefaultBorderRadius,
                    child: GestureDetector(
                      onTap: () => context.router
                          .push(GalleryRoute(urlImages: state.imageList!)),
                      child: Image.network(
                        widget.specialistData.portfolio!.first.imageLink,
                        width: double.infinity,
                        height: 240,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
