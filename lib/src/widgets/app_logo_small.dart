// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:template/src/config/images_routes.dart';
import 'package:template/src/theme/cubit/theme_cubit.dart';

class AppLogoSmall extends StatelessWidget {
  const AppLogoSmall({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        return Transform.scale(
          alignment: FractionalOffset.centerLeft,
          scale: .8,
          child: SizedBox(
              width: 150,
              height: 42,
              child: state.isLightTheme ?? true
                  ? Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          AppImages.appIconDark,
                        ),
                        const SizedBox(width: 14.89),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: SvgPicture.asset(
                            AppImages.appNameDark,
                          ),
                        ),
                      ],
                    )
                  : Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          AppImages.appIcon,
                        ),
                        const SizedBox(width: 14.89),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: SvgPicture.asset(
                            AppImages.appName,
                          ),
                        ),
                      ],
                    )),
        );
      },
    );
  }
}
