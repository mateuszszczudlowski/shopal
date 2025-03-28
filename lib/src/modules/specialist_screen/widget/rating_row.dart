import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:template/src/config/theme/app_images.dart';
import 'package:template/src/config/theme/contants.dart';

class RatingRow extends StatelessWidget {
  final int allOpinions;
  final String ratingStatic;
  final String numerOfOpinions;
  const RatingRow(
      {super.key,
      required this.ratingStatic,
      required this.numerOfOpinions,
      required this.allOpinions});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 14,
          child: Center(
            child: Text(
              ratingStatic,
              style: Theme.of(context).textTheme.displaySmall!.copyWith(
                  height: 1.5,
                  color: Theme.of(context).colorScheme.secondaryContainer,
                  fontSize: 14),
            ),
          ),
        ),
        const SizedBox(
          width: 6,
        ),
        SvgPicture.asset(
          AppImages.starRating,
          width: 16,
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: LinearProgressIndicator(
            borderRadius: kMediumBorderRadius,
            value: double.parse(numerOfOpinions) / allOpinions,
            // change this
            backgroundColor: Colors.grey[300],
            valueColor: AlwaysStoppedAnimation<Color>(
                Theme.of(context).colorScheme.primary),
            minHeight: 4.0, // Minimum height of the line
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        SizedBox(
          width: 30,
          child: Align(
            alignment: Alignment.center,
            child: Text(
              numerOfOpinions,
              style: Theme.of(context).textTheme.displaySmall!.copyWith(
                  height: 1.5,
                  color: Theme.of(context).colorScheme.secondaryContainer,
                  fontSize: 14),
            ),
          ),
        ),
      ],
    );
  }
}
