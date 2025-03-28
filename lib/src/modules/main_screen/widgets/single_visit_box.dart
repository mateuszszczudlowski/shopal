import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:template/src/config/routes.dart';

import 'package:template/src/config/theme/contants.dart';
import 'package:template/src/utils/visit_type.dart';

class SingleVisitBox extends StatelessWidget {
  final VisitType visitType;
  const SingleVisitBox({
    super.key,
    required this.visitType,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: kDefaultBorderRadius,
                    color: Theme.of(context).colorScheme.surfaceBright,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 12.0),
                        child: SizedBox(
                          width: 90,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Październik',
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayLarge!
                                        .copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primaryContainer,
                                          fontWeight: FontWeight.w400,
                                          height: 1,
                                          fontSize: 14,
                                        ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    '30',
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayLarge!
                                        .copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .secondaryContainer,
                                          fontWeight: FontWeight.w600,
                                          height: 1,
                                          fontSize: 32,
                                        ),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    '13:00',
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayLarge!
                                        .copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primaryContainer,
                                          fontWeight: FontWeight.w400,
                                          height: 1,
                                          fontSize: 18,
                                        ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.only(left: 12),
                          decoration: BoxDecoration(
                            border: Border(
                              left: BorderSide(
                                color: Theme.of(context).colorScheme.tertiary,
                                width: kNavigationBorderHeight,
                              ),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: kDefaultBorderRadius2,
                                  color:
                                      Theme.of(context).scaffoldBackgroundColor,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 9, right: 9, top: 7, bottom: 5),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        translateVisit(visitType, context)
                                            .toUpperCase(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .displayLarge!
                                            .copyWith(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .secondaryContainer,
                                              fontWeight: FontWeight.w400,
                                              height: 1,
                                              fontSize: 12,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                'Koloryzacja włosy krótkie',
                                style: Theme.of(context)
                                    .textTheme
                                    .displayLarge!
                                    .copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondaryContainer,
                                      fontWeight: FontWeight.w600,
                                      height: 1.6,
                                      fontSize: 17,
                                    ),
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              Text(
                                'Beauty Day Saloner',
                                style: Theme.of(context)
                                    .textTheme
                                    .displayLarge!
                                    .copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .primaryContainer,
                                      fontWeight: FontWeight.w400,
                                      height: 1.6,
                                      fontSize: 14,
                                    ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  TextButton(
                                    style: TextButton.styleFrom(
                                      padding: const EdgeInsets.only(
                                          left: kSmallGap2,
                                          right: kSmallGap2,
                                          top: kCustomSmall5),
                                      textStyle: Theme.of(context)
                                          .textTheme
                                          .displaySmall!
                                          .copyWith(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .secondaryContainer,
                                              fontSize: 14.0,
                                              height: kResetFontHeight),
                                      shape: const RoundedRectangleBorder(
                                        borderRadius: kMediumBorderRadius,
                                      ),
                                    ),
                                    onPressed: (visitType != VisitType.upcoming)
                                        ? () {
                                            context.router
                                                .push(const BookRoute());
                                          }
                                        : () {
                                            context.router
                                                .push(const SingleVisitRoute());
                                          },
                                    child: Text(
                                      (visitType != VisitType.upcoming)
                                          ? AppLocalizations.of(context)!
                                              .rebookButton
                                          : AppLocalizations.of(context)!
                                              .details,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
