import 'package:flutter/material.dart';
import 'package:template/src/config/theme/contants.dart';
import 'package:template/src/models/opinion.dart';
import 'package:template/src/models/opinion_response.dart';
import 'package:template/src/utils/date_formater.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:template/src/utils/star_rating_builder.dart';

class SpecialistOpinionRow extends StatefulWidget {
  final Opinion opinion;
  final List<OpinionResponse> opinionResponse;
  const SpecialistOpinionRow(
      {super.key, required this.opinion, required this.opinionResponse});

  @override
  State<SpecialistOpinionRow> createState() => _SpecialistOpinionRowState();
}

class _SpecialistOpinionRowState extends State<SpecialistOpinionRow> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        border: Border(
          bottom: BorderSide(
            color: Theme.of(context).colorScheme.tertiary,
            width: kNavigationBorderHeight,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 12.0, top: 12.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: kMediumGap3,
                      height: kMediumGap3,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.surfaceBright,
                        borderRadius: kDefaultBorderRadius,
                      ),
                      child: Icon(Icons.person,
                          size: kIconSizeMedium5,
                          color: Theme.of(context).colorScheme.secondary),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          widget.opinion.opinionAuthor,
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall!
                              .copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .secondaryContainer,
                                  fontSize: 15,
                                  height: 1),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          convertDateTimeOpinions(widget.opinion.createdAt),
                          style: Theme.of(context)
                              .textTheme
                              .displayMedium!
                              .copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .primaryContainer,
                                  height: 1),
                        )
                      ],
                    ),
                  ],
                ),
                StarRatingBuilder(
                  iconSize: 16,
                  rating: widget.opinion.rating,
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: RichText(
                text: TextSpan(
                  text: AppLocalizations.of(context)!.serviceHeader,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Theme.of(context).colorScheme.secondaryContainer,
                      fontWeight: FontWeight.w600),
                  children: <TextSpan>[
                    TextSpan(
                      text: widget.opinion.service,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Theme.of(context)
                                .colorScheme
                                .secondaryContainer,
                            fontWeight: FontWeight.w400,
                          ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                widget.opinion.opinion,
                style: Theme.of(context).textTheme.displaySmall!.copyWith(
                    color: Theme.of(context).colorScheme.secondaryContainer,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    height: 1.3),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            (widget.opinionResponse.isNotEmpty)
                ? Padding(
                    padding: const EdgeInsets.only(bottom: kCustomSmall1),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: kSmallGap4, vertical: kSmallGap7),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.surfaceBright,
                        borderRadius: kDefaultBorderRadius,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.reply,
                                color: Theme.of(context)
                                    .colorScheme
                                    .secondaryContainer,
                                size: 16,
                              ),
                              const SizedBox(
                                width: kSmallGap4,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    widget.opinionResponse[0].author,
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall!
                                        .copyWith(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .secondaryContainer,
                                            height: kResetFontHeight),
                                  ),
                                  const SizedBox(
                                    height: kSmallGap6,
                                  ),
                                  Text(
                                    convertDateTimeOpinions(
                                        widget.opinionResponse[0].createdAt),
                                    textAlign: TextAlign.left,
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayMedium!
                                        .copyWith(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onTertiary,
                                            height: kResetFontHeight),
                                  ),
                                  const SizedBox(
                                    height: kSmallGap7,
                                  ),
                                  Text(
                                    widget.opinionResponse[0].response,
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall!
                                        .copyWith(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .secondaryContainer,
                                            height: kResetFontHeight,
                                            fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                : const SizedBox()
          ],
        ),
      ),
    );
  }
}
