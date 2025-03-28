import 'package:flutter/material.dart';

class ExtraInfo extends StatelessWidget {
  final String normalText;
  final String boldText;
  const ExtraInfo(
      {super.key, required this.normalText, required this.boldText});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        // TODO add GDPR info
        onTap: () => debugPrint('open some info'),
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            text: normalText,
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: Theme.of(context).colorScheme.secondaryContainer,
                fontWeight: FontWeight.w400),
            children: <TextSpan>[
              TextSpan(
                text: boldText,
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                      fontWeight: FontWeight.w600,
                    ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
