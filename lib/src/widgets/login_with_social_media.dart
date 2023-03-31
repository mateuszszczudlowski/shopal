import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:template/src/config/images_routes.dart';
import 'package:template/src/config/theme/contants.dart';
import 'package:template/src/theme/cubit/theme_cubit.dart';

class LoginWithSocialMedia extends StatelessWidget {
  const LoginWithSocialMedia({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        return Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () =>
                    // context
                    //     .read<LoginBloc>()
                    //     .add(const LoginUserWithGoogle()),
                    log('SIGNIN WITH GOOGLE'),
                child: Container(
                  height: kCustomMediumGap2,
                  decoration: BoxDecoration(
                      borderRadius: kDefaultBorderRadius,
                      color: Theme.of(context).colorScheme.onBackground),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40.0, vertical: 10),
                    child: (state.isLightTheme!)
                        ? SvgPicture.asset(
                            AppImages.appSignInGoogleDark,
                          )
                        : SvgPicture.asset(
                            AppImages.appSignInGoogleLight,
                          ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: kSmallGap2,
            ),
            Expanded(
              child: GestureDetector(
                onTap: () =>
                    // context
                    //     .read<LoginBloc>()
                    //     .add(const LoginUserWithFacebook())
                    log('SIGNIN WITH FACEBOOK'),
                child: Container(
                  height: kCustomMediumGap2,
                  decoration: BoxDecoration(
                      borderRadius: kDefaultBorderRadius,
                      color: Theme.of(context).colorScheme.onBackground),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40.0, vertical: 10),
                    child: (state.isLightTheme!)
                        ? SvgPicture.asset(
                            AppImages.appSignInFacebookDark,
                          )
                        : SvgPicture.asset(
                            AppImages.appSignInFacebookLight,
                          ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
