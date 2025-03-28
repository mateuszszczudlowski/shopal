import 'package:flutter/material.dart';
import 'package:template/src/config/theme/contants.dart';

class ShareButton extends StatelessWidget {
  final IconData icon;
  final String mediaName;
  final VoidCallback callback;
  const ShareButton(
      {super.key,
      required this.icon,
      required this.mediaName,
      required this.callback});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Padding(
        padding: const EdgeInsets.only(right: 24.0),
        child: Column(
          children: [
            Container(
              width: kCustomSmall10,
              height: kCustomSmall10,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surfaceBright,
                borderRadius: kDefaultBorderRadius,
              ),
              child: Icon(icon,
                  size: 24, color: Theme.of(context).colorScheme.secondary),
            ),
            const SizedBox(
              height: 4,
            ),
            SizedBox(
              width: 74,
              child: Center(
                child: Text(
                  mediaName,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.displayLarge!.copyWith(
                        color: Theme.of(context).colorScheme.secondaryContainer,
                        fontWeight: FontWeight.w400,
                        height: 1.6,
                        fontSize: 13,
                      ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
