import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:template/src/config/theme/contants.dart';
import 'package:template/src/widgets/language_switcher.dart';
import 'package:template/src/widgets/header_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LanguageView extends StatelessWidget {
  const LanguageView({super.key});

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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: kCustomSmall10,
                    ),
                    IconButton(
                      onPressed: () => context.router.navigateBack(),
                      splashRadius: kCustomSmall2,
                      icon: Icon(Icons.arrow_back_ios_outlined,
                          size: kSmallGap,
                          color: Theme.of(context).colorScheme.secondary),
                    ),
                    const SizedBox(
                      height: kCustomSmall2,
                    ),
                    HeaderText(
                      headerText: AppLocalizations.of(context)!.languageHeader2,
                    ),
                    const SizedBox(
                      height: kCustomSmall10,
                    ),
                    LanguageSwitcher(
                      selected: true,
                      language: AppLocalizations.of(context)!.language1,
                    ),
                    LanguageSwitcher(
                      selected: false,
                      language: AppLocalizations.of(context)!.language2,
                    ),
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
