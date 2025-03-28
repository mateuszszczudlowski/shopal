import 'package:flutter/material.dart';
import 'package:template/src/config/theme/contants.dart';

class Gender extends StatelessWidget {
  const Gender({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'płeć',
          style: Theme.of(context).textTheme.displayMedium!.copyWith(
              color: Theme.of(context).colorScheme.primaryContainer,
              fontWeight: FontWeight.w300),
        ),
        const SizedBox(
          width: 50,
        ),
        Row(
          children: [
            Container(
              width: kMediumGap3,
              height: kMediumGap3,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: kDefaultBorderRadius,
              ),
              child: Icon(Icons.man,
                  size: kIconSizeMedium5,
                  color: Theme.of(context).scaffoldBackgroundColor),
            ),
            const SizedBox(
              width: 20,
            ),
            Container(
              width: kMediumGap3,
              height: kMediumGap3,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surfaceBright,
                borderRadius: kDefaultBorderRadius,
              ),
              child: Icon(Icons.woman,
                  size: kIconSizeMedium5,
                  color: Theme.of(context).colorScheme.secondary),
            ),
          ],
        ),
      ],
    );
  }
}
