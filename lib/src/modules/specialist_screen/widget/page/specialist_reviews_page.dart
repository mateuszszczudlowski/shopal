// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:template/src/models/opinion_response.dart';
import 'package:template/src/models/specialist_data.dart';
import 'package:template/src/modules/specialist_screen/widget/overall_rating.dart';
import 'package:template/src/modules/specialist_screen/widget/rating_breakdown.dart';
import 'package:template/src/modules/specialist_screen/widget/specialist_opinion_row.dart';

class SpecialistReviewsPage extends StatelessWidget {
  final SpecialistData specialistData;
  const SpecialistReviewsPage({
    super.key,
    required this.specialistData,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  OverallRating(
                    opinions: specialistData.opinions!,
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  RatingBreakdown(
                    listOpinions: specialistData.opinions!,
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: specialistData.opinions!.length,
                padding: EdgeInsets.zero,
                itemBuilder: (BuildContext context, int index) {
                  List<OpinionResponse>? opinionResponse = specialistData
                      .opinionsResponses!
                      .where((response) =>
                          response.opinionId ==
                          specialistData.opinions![index].id)
                      .toList();

                  return ListTile(
                    title: SpecialistOpinionRow(
                      opinionResponse: opinionResponse,
                      opinion: specialistData.opinions![index],
                    ),
                  );
                },
              ),
            )
          ]),
    );
  }
}
