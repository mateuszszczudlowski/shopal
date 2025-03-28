import 'package:flutter/material.dart';

class BottomText extends StatelessWidget {
  final String normalText;
  final String boldText;
  final VoidCallback onTap;
  const BottomText(
      {super.key,
      required this.normalText,
      required this.boldText,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: 20,
        child: Align(
          alignment: Alignment.center,
          child: RichText(
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
      ),
    );
  }
}
