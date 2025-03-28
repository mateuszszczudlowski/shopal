import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:template/src/models/opinion.dart';
import 'package:template/src/modules/specialist_screen/bloc/specialist_view_bloc.dart';
import 'package:template/src/utils/star_rating_builder.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class OverallRating extends StatelessWidget {
  final List<Opinion> opinions;
  const OverallRating({super.key, required this.opinions});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SpecialistViewBloc, SpecialistViewState>(
        builder: (context, state) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            state.averageRating.toString(),
            style: Theme.of(context).textTheme.displaySmall!.copyWith(
                height: 1.2,
                color: Theme.of(context).colorScheme.secondaryContainer,
                fontSize: 32),
          ),
          StarRatingBuilder(
            iconSize: 16,
            rating: state.averageRating,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            AppLocalizations.of(context)!.opinionsNumber('${opinions.length}'),
            style: Theme.of(context).textTheme.displaySmall!.copyWith(
                height: 1.2,
                color: Theme.of(context).colorScheme.primaryContainer,
                fontSize: 12),
          ),
        ],
      );
    });
  }
}
