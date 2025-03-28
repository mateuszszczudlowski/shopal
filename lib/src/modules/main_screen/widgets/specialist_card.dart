import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:template/src/config/routes.dart';
import 'package:template/src/config/theme/app_images.dart';
import 'package:template/src/config/theme/colors.dart';
import 'package:template/src/config/theme/contants.dart';
import 'package:template/src/models/specialist_data.dart';
import 'package:template/src/theme/cubit/theme_cubit.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SpecialistCard extends StatelessWidget {
  final SpecialistData specialistData;
  const SpecialistCard({super.key, required this.specialistData});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.router.push(SpecialistRoute(specialistId: specialistData.id));
      },
      child: SizedBox(
        width: kListViewHeightMobile,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ClipRRect(
                    borderRadius: kDefaultBorderRadius,
                    child: Stack(
                      children: [
                        specialistData.mainImage!.isNotEmpty
                            ? SizedBox(
                                width: 230,
                                height: 142,
                                child: Image.network(
                                  specialistData.mainImage!,
                                  fit: BoxFit.cover,
                                ))
                            : Container(
                                decoration: BoxDecoration(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .surfaceBright,
                                  borderRadius: kDefaultBorderRadius,
                                ),
                                width: kListViewHeightMobile - 20,
                                height: 120,
                              ),
                        Container(
                          width: 121,
                          height: 30,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomRight: borderRadiusMedium,
                                topLeft: borderRadiusMedium),
                            color: mainColorLighter,
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SvgPicture.asset(AppImages.starRating),
                                const SizedBox(width: kSmallGap8),
                                Text(
                                  specialistData.averageRating.toString(),
                                  style: Theme.of(context)
                                      .textTheme
                                      .displaySmall!
                                      .copyWith(
                                          height: kLineHeight,
                                          color: semiWHiteColor),
                                ),
                                const SizedBox(width: kSmallGap9),
                                Text(
                                  AppLocalizations.of(context)!.opinionsNumber(
                                      '${specialistData.numberOfOpinions}'),
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelSmall!
                                      .copyWith(
                                          letterSpacing: kResetValue,
                                          height: kLineHeight,
                                          color: semiWHiteColor),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )),
                const SizedBox(
                  width: kCustomSmall7,
                )
              ],
            ),
            const SizedBox(
              height: kSmallGap4,
            ),
            BlocBuilder<ThemeCubit, ThemeState>(
              builder: (context, state) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    (state.isLightTheme!)
                        ? SvgPicture.asset(
                            AppImages.checkOkDark,
                            width: kIconSizeSmall,
                          )
                        : SvgPicture.asset(
                            AppImages.checkOkLight,
                            width: kIconSizeSmall,
                          ),
                    const SizedBox(
                      width: kCustomSmall8,
                    ),
                    Text(
                      'Zaoszczędź do 30%'.toUpperCase(),
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium!
                          .copyWith(
                              color: Theme.of(context)
                                  .colorScheme
                                  .primaryContainer),
                    ),
                  ],
                );
              },
            ),
            const SizedBox(
              height: kCustomSmall5,
            ),
            Padding(
              padding: const EdgeInsets.only(right: kCustomSmall3),
              child: Text(
                specialistData.name,
                overflow: TextOverflow.clip,
                maxLines: 2,
                softWrap: true,
                style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      color: Theme.of(context).colorScheme.secondaryContainer,
                      height: 1.4,
                    ),
              ),
            ),
            const SizedBox(
              height: kCustomSmall4,
            ),
            Padding(
              padding: const EdgeInsets.only(right: kCustomSmall3),
              child: Text(
                specialistData.adress!,
                softWrap: true,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: Theme.of(context).colorScheme.primaryContainer),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
