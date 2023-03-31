import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:template/src/config/routes.dart';
import 'package:template/src/config/theme/contants.dart';
import 'package:template/src/config/theme/general_btn_styles.dart';

class WelcomeButtons extends StatelessWidget {
  const WelcomeButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final GeneralBtnStyles generalBtnStyles = Theme.of(context).extension()!;
    return SizedBox(
      height: kLargeGap3,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextButton(
                    onPressed: () {
                      null;
                    },
                    child: Text(
                      AppLocalizations.of(context)!.createAccountBtn,
                      style: generalBtnStyles.btnTextStyle,
                    )),
              ),
            ],
          ),
          const SizedBox(
            height: kSmallGap,
          ),
          Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: () => context.router.pushNamed(
                    Routes.login.generatePath(),
                  ),
                  child: Text(
                    AppLocalizations.of(context)!.loginBtn,
                    style: generalBtnStyles.btnTextStyle,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
