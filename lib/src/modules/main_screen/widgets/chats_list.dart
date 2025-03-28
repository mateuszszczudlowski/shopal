import 'package:flutter/material.dart';
import 'package:template/src/modules/main_screen/widgets/chat_row.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height - 297,
      child: ListView.separated(
          padding: EdgeInsets.zero,
          separatorBuilder: (context, index) => const SizedBox(
                height: 20,
              ),
          itemCount: 2,
          itemBuilder: (BuildContext context, int index) {
            return const ChatRow();
          }),
    );
  }
}
