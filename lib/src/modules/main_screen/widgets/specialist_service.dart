import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:template/src/config/theme/contants.dart';

class SpecialistService extends StatelessWidget {
  final String specialistServiceName;
  final String svgIconSrc;
  final double boxPadding;
  const SpecialistService(
      {Key? key,
      required this.specialistServiceName,
      required this.svgIconSrc,
      required this.boxPadding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Container(
              width: kCustomMedium,
              height: kCustomMedium,
              decoration: BoxDecoration(
                borderRadius: kDefaultBorderRadius,
                color: Theme.of(context).colorScheme.onBackground,
              ),
              child: Padding(
                padding: EdgeInsets.all(boxPadding),
                child: SvgPicture.asset(svgIconSrc),
              ),
            ),
            const SizedBox(
              height: kSmallGap6,
            ),
            SizedBox(
              width: kCustomMedium,
              child: Text(
                specialistServiceName,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.labelSmall!.copyWith(
                    color: Theme.of(context).colorScheme.secondaryContainer),
              ),
            ),
          ],
        ),
        const SizedBox(
          width: kSmallGap7,
        )
      ],
    );
  }
}
