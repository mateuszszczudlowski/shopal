import 'package:flutter/material.dart';
import 'package:template/src/models/opinion.dart';
import 'package:template/src/modules/specialist_screen/widget/rating_row.dart';

class RatingBreakdown extends StatelessWidget {
  final List<Opinion> listOpinions;
  const RatingBreakdown({super.key, required this.listOpinions});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(children: buildRatingRows()),
    );
  }

  buildRatingRows() {
    List<Widget> ratingUi = [];
    List<Opinion> opinionRow = [];

    for (var i = 1; i <= 5; i++) {
      opinionRow =
          listOpinions.where((opinion) => (opinion.rating == i)).toList();
      ratingUi.add(RatingRow(
        ratingStatic: i.toString(),
        numerOfOpinions: (opinionRow.length).toString(),
        allOpinions: listOpinions.length,
      ));
    }

    return ratingUi.reversed.toList();
  }
}
