import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:template/src/config/routes.dart';
import 'package:template/src/config/theme/app_images.dart';
import 'package:template/src/config/theme/colors.dart';
import 'package:template/src/config/theme/contants.dart';
import 'package:template/src/theme/cubit/theme_cubit.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(builder: (context, state) {
      return GestureDetector(
        onTap: () {
          context.router.push(const SearchRoute());
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: kCustomSmall9, vertical: kIconSizeMedium),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(kSmallGap4),
                  border: Border.all(
                    width: kNavigationBorderHeight,
                    style: BorderStyle.solid,
                    color: borderColorDark,
                  ),
                ),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      (state.isLightTheme!)
                          ? AppImages.searchIconDark
                          : AppImages.searchIconLight,
                      width: kIconSizeMedium2,
                    ),
                    const SizedBox(
                      width: kSmallGap3,
                    ),
                    Text(AppLocalizations.of(context)!.hintSearch,
                        style: const TextStyle(
                            fontSize: kCustomSmall9,
                            fontWeight: FontWeight.w400,
                            color: borderColorDark)),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
