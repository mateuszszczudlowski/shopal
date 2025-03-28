import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:template/src/config/routes.dart';
import 'package:template/src/config/theme/contants.dart';

class ChatRow extends StatelessWidget {
  const ChatRow({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.router.push(const SingleChatRoute());
      },
      child: Row(
        children: [
          Container(
            width: kMediumGap3,
            height: kMediumGap3,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surfaceBright,
              borderRadius: kDefaultBorderRadius,
            ),
            child: Icon(Icons.person,
                size: kIconSizeMedium5,
                color: Theme.of(context).colorScheme.secondary),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Adrian Szczudłowski',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(color: Theme.of(context).colorScheme.secondary),
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                'Ok, to do zobaczenia!',
                style: Theme.of(context).textTheme.displayMedium!.copyWith(
                    color: Theme.of(context).colorScheme.primaryContainer,
                    fontWeight: FontWeight.w300),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
