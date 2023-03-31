import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:template/src/config/theme/contants.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:template/src/widgets/header_widget.dart';

class MessagesPage extends StatelessWidget {
  const MessagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kHorizontalPadding,
      child: Container(
        color: Theme.of(context).scaffoldBackgroundColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: kCustomSmall10,
            ),
            IconButton(
              onPressed: () => context.router.navigateBack(),
              splashRadius: kSplashSizeMedium,
              icon: Icon(Icons.arrow_back_ios_outlined,
                  size: kIconSizeMedium2,
                  color: Theme.of(context).colorScheme.secondary),
            ),
            const SizedBox(
              height: kCustomSmall3,
            ),
            HeaderText(
              headerText: AppLocalizations.of(context)!.messagesHeader,
            ),
          ],
        ),
      ),
    );
  }
}
