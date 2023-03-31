import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class IntroductionText extends StatelessWidget {
  const IntroductionText({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: RichText(
        text: TextSpan(
          text: AppLocalizations.of(context)!.welcomeDesc1,
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(color: Theme.of(context).colorScheme.primaryContainer),
          children: <TextSpan>[
            TextSpan(
              text: AppLocalizations.of(context)!.welcomeDescBold1,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
