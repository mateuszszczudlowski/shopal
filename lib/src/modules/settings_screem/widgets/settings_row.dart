import 'package:flutter/material.dart';
import 'package:template/src/config/theme/contants.dart';

class SettingsRow extends StatelessWidget {
  final String header;
  final String subheader;
  final IconData icon;
  final VoidCallback callback;
  const SettingsRow(
      {Key? key,
      required this.header,
      required this.subheader,
      required this.callback,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback,
      child: SizedBox(
        height: kCustomMediumGap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                const SizedBox(
                  width: 5,
                ),
                Container(
                  width: kMediumGap3,
                  height: kMediumGap3,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.onBackground,
                    borderRadius: kDefaultBorderRadius,
                  ),
                  child: Icon(icon,
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
                      header,
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Theme.of(context).colorScheme.secondary),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      subheader,
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium!
                          .copyWith(
                              color: Theme.of(context)
                                  .colorScheme
                                  .primaryContainer,
                              fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Icon(Icons.arrow_forward_ios_outlined,
                  size: kSmallGap,
                  color: Theme.of(context).colorScheme.secondary),
            ),
          ],
        ),
      ),
    );
  }
}
