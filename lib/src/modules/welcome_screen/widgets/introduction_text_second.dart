import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class IntroductionTextSecond extends StatelessWidget {
  const IntroductionTextSecond({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: RichText(
        text: TextSpan(
          text: AppLocalizations.of(context)!.welcomeDesc2_1,
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(color: Theme.of(context).colorScheme.primaryContainer),
          children: <TextSpan>[
            TextSpan(
                text: AppLocalizations.of(context)!.welcomeDescBold2_2,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Theme.of(context).colorScheme.primaryContainer,
                    fontWeight: FontWeight.w600)),
            TextSpan(
              text: AppLocalizations.of(context)!.welcomeDescBold2_3,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Theme.of(context).colorScheme.primaryContainer),
            ),
          ],
        ),
      ),
    );
  }
}
