import 'package:flutter/material.dart';
import 'package:template/src/config/theme/contants.dart';
import 'package:template/src/modules/welcome_screen/widgets/introduction_text.dart';
import 'package:template/src/modules/welcome_screen/widgets/introduction_text_second.dart';
import 'package:template/src/modules/welcome_screen/widgets/introduction_text_third.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:template/src/widgets/header_widget.dart';

class IntroductionGrupeText extends StatelessWidget {
  const IntroductionGrupeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          HeaderText(
            headerText: AppLocalizations.of(context)!.welcomeHeader,
          ),
          const SizedBox(height: kCustomSmall2),
          Column(
            children: const [
              IntroductionText(),
              SizedBox(height: kMediumGap4),
              IntroductionTextSecond(),
              SizedBox(height: kMediumGap4),
              IntroductionTextThird(),
            ],
          ),
        ],
      ),
    );
  }
}
