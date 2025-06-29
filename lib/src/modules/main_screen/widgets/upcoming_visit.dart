import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:template/src/config/routes.dart';
import 'package:template/src/config/theme/app_images.dart';
import 'package:template/src/config/theme/contants.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:template/src/theme/cubit/theme_cubit.dart';

class UpcomingVisit extends StatelessWidget {
  const UpcomingVisit({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kCustomSmall1),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: kSmallGap3),
        height: kUpComingVisit,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surfaceBright,
          borderRadius: kDefaultBorderRadius,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      BlocBuilder<ThemeCubit, ThemeState>(
                        builder: (context, state) {
                          return SvgPicture.asset(
                            (state.isLightTheme!)
                                ? AppImages.bellIconDark
                                : AppImages.bellIconLight,
                            width: kCustomSmall9,
                          );
                        },
                      ),
                      const SizedBox(
                        width: kSmallGap10,
                      ),
                      Text(
                        AppLocalizations.of(context)!.upcomingVisit,
                        textAlign: TextAlign.left,
                        style: Theme.of(context)
                            .textTheme
                            .displayMedium!
                            .copyWith(
                                color: Theme.of(context).colorScheme.onTertiary,
                                height: kResetFontHeight),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: kSmallGap6,
                  ),
                  Text(
                    'Beauty Day Saloner: Koloryzacja włosy krótkie',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.displaySmall!.copyWith(
                        color: Theme.of(context).colorScheme.secondaryContainer,
                        height: kResetFontHeight),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: kCustomSmall6,
            ),
            TextButton(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.only(
                    left: kSmallGap2, right: kSmallGap2, top: kCustomSmall5),
                textStyle: Theme.of(context).textTheme.displaySmall!.copyWith(
                    color: Theme.of(context).colorScheme.secondaryContainer,
                    fontSize: 15.0,
                    height: kResetFontHeight),
                shape: const RoundedRectangleBorder(
                  borderRadius: kMediumBorderRadius,
                ),
              ),
              onPressed: () {
                context.router.push(const SingleVisitRoute());
              },
              child: Text(
                AppLocalizations.of(context)!.showMore,
              ),
            )
          ],
        ),
      ),
    );
  }
}
