import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:template/src/config/routes.dart';
import 'package:template/src/config/theme/app_images.dart';
import 'package:template/src/config/theme/colors.dart';
import 'package:template/src/config/theme/contants.dart';
import 'package:template/src/models/specialist_data.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SpecialistCardSearch extends StatelessWidget {
  final int index;
  final SpecialistData specialistData;
  const SpecialistCardSearch(
      {super.key, required this.index, required this.specialistData});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.router.push(SpecialistRoute(specialistId: specialistData.id));
      },
      child: Container(
        padding: (index != 0)
            ? const EdgeInsets.only(top: 20, bottom: 14)
            : const EdgeInsets.only(top: 0, bottom: 14),
        decoration: (index != 2)
            ? BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Theme.of(context).colorScheme.tertiary,
                    width: kNavigationBorderHeight,
                  ),
                ),
              )
            : null,
        width: double.infinity,
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
                        SizedBox(
                            width: MediaQuery.of(context).size.width - 40,
                            child: Image.network(
                              specialistData.mainImage!,
                              fit: BoxFit.cover,
                            )),
                        Container(
                          width: 151,
                          height: 40,
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
                                SvgPicture.asset(
                                  AppImages.starRating,
                                  width: 18,
                                ),
                                const SizedBox(width: kSmallGap10),
                                Text(
                                  '${specialistData.averageRating}',
                                  style: Theme.of(context)
                                      .textTheme
                                      .displaySmall!
                                      .copyWith(
                                          fontSize: 16,
                                          height: kLineHeight,
                                          color: semiWHiteColor),
                                ),
                                const SizedBox(width: kSmallGap10),
                                Text(
                                  AppLocalizations.of(context)!.opinionsNumber(
                                      '${specialistData.numberOfOpinions}'),
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelSmall!
                                      .copyWith(
                                          fontSize: 12,
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
              ],
            ),
            const SizedBox(
              height: kSmallGap4,
            ),
            const SizedBox(
              height: kCustomSmall5,
            ),
            Text(
              specialistData.name,
              style: Theme.of(context).textTheme.displaySmall!.copyWith(
                  height: 1.6,
                  fontSize: 19,
                  color: Theme.of(context).colorScheme.secondaryContainer),
            ),
            const SizedBox(
              height: kCustomSmall4,
            ),
            specialistData.adress != null
                ? Padding(
                    padding: const EdgeInsets.only(right: kCustomSmall4),
                    child: Text(
                      specialistData.adress!,
                      softWrap: true,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 14,
                          height: 1.6,
                          color:
                              Theme.of(context).colorScheme.primaryContainer),
                    ),
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
