import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:template/src/config/routes.dart';
import 'package:template/src/config/theme/app_images.dart';

import 'package:template/src/config/theme/contants.dart';
import 'package:template/src/models/services.dart';
import 'package:template/src/theme/cubit/theme_cubit.dart';

class SpecialistServicesRow extends StatelessWidget {
  final Services service;
  const SpecialistServicesRow({
    super.key,
    required this.service,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kTopHorizontalPaddingMedium,
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Theme.of(context).colorScheme.tertiary,
              width: kNavigationBorderHeight,
            ),
          ),
        ),
        child: Padding(
          padding: kBottomPaddingSmall,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: kTopHorizontalPaddingSmall,
                child: SizedBox(
                  width: 144,
                  child: Text(
                    service.name,
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                        height: 1.2,
                        color: Theme.of(context).colorScheme.secondaryContainer,
                        fontSize: 15),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              service.price,
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall!
                                  .copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondaryContainer,
                                      fontSize: 15,
                                      height: 1),
                            ),
                            const SizedBox(
                              height: kCustomSmall4,
                            ),
                            (service.duration != null)
                                ? Text(
                                    service.duration!,
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall!
                                        .copyWith(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primaryContainer,
                                            fontSize: 11,
                                            height: 1),
                                  )
                                : const SizedBox(),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: kSmallGap7,
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.only(
                              left: kSmallGap2,
                              right: kSmallGap2,
                              top: kCustomSmall5),
                          textStyle: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .secondaryContainer,
                                  fontSize: 14.0,
                                  height: kResetFontHeight),
                          shape: const RoundedRectangleBorder(
                            borderRadius: kMediumBorderRadius,
                          ),
                        ),
                        onPressed: () {
                          context.router.push(const BookRoute());
                        },
                        child: Text(
                          AppLocalizations.of(context)!.bookButton,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  (service.specialOffer != null)
                      ? BlocBuilder<ThemeCubit, ThemeState>(
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
                                  '${AppLocalizations.of(context)!.promotionHeader} ${service.specialOffer}'
                                      .toUpperCase(),
                                  style: Theme.of(context)
                                      .textTheme
                                      .displayMedium!
                                      .copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primaryContainer),
                                )
                              ],
                            );
                          },
                        )
                      : const SizedBox(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
