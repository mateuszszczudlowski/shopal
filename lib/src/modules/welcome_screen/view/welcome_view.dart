// import 'package:auto_route/auto_route.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:template/src/config/routes.dart';
import 'package:template/src/config/theme/contants.dart';
import 'package:template/src/widgets/bottom_text.dart';
import 'package:template/src/modules/welcome_screen/widgets/introduction_grupe_text.dart';
import 'package:template/src/modules/welcome_screen/widgets/welcome_buttons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:template/src/widgets/app_logo.dart';

@RoutePage()
class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: kDefaultPadding,
        child: LayoutBuilder(
          builder: (context, constraints) => SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: IntrinsicHeight(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      height: kLargeGap,
                    ),
                    const AppLogo(),
                    const SizedBox(
                      height: kCustomLargeGap,
                    ),
                    const IntroductionGrupeText(),
                    // remove it
                    // remove it
                    const SizedBox(
                      height: kSmallGap,
                    ),
                    const WelcomeButtons(),
                    const SizedBox(
                      height: kMediumGap,
                    ),
                    BottomText(
                      onTap: () => context.router.push(const RegisterRoute()),
                      normalText:
                          AppLocalizations.of(context)!.welcomeScreenBottom,
                      boldText:
                          AppLocalizations.of(context)!.welcomeScreenBottomDark,
                    ),
                    const SizedBox(
                      height: kSmallGap,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
