import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:template/src/config/theme/contants.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:template/src/modules/main_screen/widgets/chats_list.dart';
import 'package:template/src/widgets/header_widget.dart';

@RoutePage()
class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Padding(
        padding: kHorizontalPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: kCustomSmall10,
            ),
            HeaderText(
              headerText: AppLocalizations.of(context)!.chatsHeader,
            ),
            const SizedBox(
              height: kCustomSmall2,
            ),
            const ChatList()
          ],
        ),
      ),
    );
  }
}
