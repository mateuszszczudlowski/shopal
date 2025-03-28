// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:template/src/config/theme/app_images.dart';
import 'package:template/src/theme/cubit/theme_cubit.dart';

class StarRatingBuilder extends StatelessWidget {
  final double rating;
  final double iconSize;
  const StarRatingBuilder({
    super.key,
    required this.rating,
    required this.iconSize,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        return Wrap(spacing: 4, children: buildRating(rating, state));
      },
    );
  }

  buildRating(double rating, ThemeState state) {
    List<Widget> ratingUi = [];
    if (rating % 1 == 0) {
      for (var i = 0; i < rating; i++) {
        ratingUi.add(
          SvgPicture.asset(
            (state.isLightTheme!)
                ? AppImages.starRatingFull
                : AppImages.starRatingFullLight,
            width: iconSize,
          ),
        );
      }
      for (var i = 0; i < (5 - rating); i++) {
        ratingUi.add(
          SvgPicture.asset(
            (state.isLightTheme!)
                ? AppImages.starRating
                : AppImages.starRatingLight,
            width: iconSize,
          ),
        );
      }
    } else {
      for (var i = 0; i < rating.floor(); i++) {
        ratingUi.add(
          SvgPicture.asset(
            (state.isLightTheme!)
                ? AppImages.starRatingFull
                : AppImages.starRatingFullLight,
            width: iconSize,
          ),
        );
      }

      ratingUi.add(
        SvgPicture.asset(
          (state.isLightTheme!)
              ? AppImages.starRatingHalf
              : AppImages.starRatingHalfLight,
          width: iconSize,
        ),
      );

      for (var i = 0; i < (5 - (rating.floor() + 1)); i++) {
        ratingUi.add(
          SvgPicture.asset(
            (state.isLightTheme!)
                ? AppImages.starRating
                : AppImages.starRatingLight,
            width: iconSize,
          ),
        );
      }
    }

    return ratingUi;
  }
}
