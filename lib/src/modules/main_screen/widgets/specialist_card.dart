import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:template/src/config/theme/app_images.dart';
import 'package:template/src/config/theme/colors.dart';
import 'package:template/src/config/theme/contants.dart';
import 'package:template/src/theme/cubit/theme_cubit.dart';

class SpecialistCard extends StatelessWidget {
  const SpecialistCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                      Image.asset('assets/images/dummy.png'),
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
                                '5.0',
                                style: Theme.of(context)
                                    .textTheme
                                    .displaySmall!
                                    .copyWith(
                                        height: kLineHeight,
                                        color: semiWHiteColor),
                              ),
                              const SizedBox(width: kSmallGap9),
                              Text(
                                '(67 opinii)',
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
                          AppImages.ckeckOkDark,
                          width: kIconSizeSmall,
                        )
                      : SvgPicture.asset(
                          AppImages.ckeckOkLight,
                          width: kIconSizeSmall,
                        ),
                  const SizedBox(
                    width: kCustomSmall8,
                  ),
                  Text(
                    'Zaoszczędź do 30%'.toUpperCase(),
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        color: Theme.of(context).colorScheme.primaryContainer),
                  ),
                ],
              );
            },
          ),
          const SizedBox(
            height: kCustomSmall5,
          ),
          Text(
            'Doradca stylu: stylistka',
            style: Theme.of(context).textTheme.displaySmall!.copyWith(
                color: Theme.of(context).colorScheme.secondaryContainer),
          ),
          const SizedBox(
            height: kCustomSmall4,
          ),
          Padding(
            padding: const EdgeInsets.only(right: kCustomSmall4),
            child: Text(
              'Aleja Wojska Polskiego 30A, 10-228, Olsztyn',
              softWrap: true,
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: Theme.of(context).colorScheme.primaryContainer),
            ),
          ),
        ],
      ),
    );
  }
}
