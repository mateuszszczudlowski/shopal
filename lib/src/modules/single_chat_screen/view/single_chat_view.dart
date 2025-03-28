import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:template/src/config/theme/contants.dart';
import 'package:template/src/widgets/header_widget.dart';

@RoutePage()
class SingleChatView extends StatelessWidget {
  const SingleChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
              IconButton(
                onPressed: () => context.router.back(),
                splashRadius: kSplashSizeMedium,
                icon: Icon(Icons.arrow_back_ios_outlined,
                    size: kIconSizeMedium2,
                    color: Theme.of(context).colorScheme.secondary),
              ),
              const SizedBox(
                height: kCustomSmall3,
              ),
              const HeaderText(
                headerText: 'Adrian Szczudłowski',
              ),
              const SizedBox(
                height: kCustomSmall2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
