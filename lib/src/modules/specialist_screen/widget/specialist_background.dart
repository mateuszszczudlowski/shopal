import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:template/src/config/theme/app_images.dart';
import 'package:template/src/config/theme/colors.dart';
import 'package:template/src/config/theme/contants.dart';
import 'package:template/src/models/specialist_data.dart';
import 'package:template/src/modules/specialist_screen/bloc/specialist_view_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SpecialistBackground extends StatelessWidget {
  final SpecialistData specialistData;
  final double height;
  const SpecialistBackground(
      {super.key, required this.height, required this.specialistData});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: kDefaultBorderRadius3,
          child: Image.network(
            specialistData.mainImage!,
            width: MediaQuery.of(context).size.width,
            height: height,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 59,
          right: 0,
          child: Row(
            children: [
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: borderRadiusMedium2,
                  ),
                  color: mainColorLighter,
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 2.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                BlocBuilder<SpecialistViewBloc,
                                    SpecialistViewState>(
                                  builder: (context, state) {
                                    return Row(
                                      children: [
                                        SvgPicture.asset(
                                          AppImages.starRating,
                                          width: 18,
                                        ),
                                        const SizedBox(
                                          width: kSmallGap10,
                                        ),
                                        Text(
                                          state.averageRating.toString(),
                                          style: Theme.of(context)
                                              .textTheme
                                              .displaySmall!
                                              .copyWith(
                                                  height: kLineHeight,
                                                  color: semiWHiteColor,
                                                  fontSize: 16),
                                        ),
                                        const SizedBox(
                                          width: kSmallGap10,
                                        ),
                                        Text(
                                          AppLocalizations.of(context)!
                                              .opinionsNumber(
                                                  '${specialistData.opinions!.length}'),
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelSmall!
                                              .copyWith(
                                                  letterSpacing: kResetValue,
                                                  height: kLineHeight,
                                                  color: semiWHiteColor,
                                                  fontSize: 16),
                                        ),
                                      ],
                                    );
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 68,
          right: 20,
          child: IconButton(
            onPressed: () {},
            splashRadius: kSplashSizeMedium,
            icon: const Icon(Icons.favorite_border_outlined,
                size: 32, color: whiteColor),
          ),
        ),
      ],
    );
  }
}
