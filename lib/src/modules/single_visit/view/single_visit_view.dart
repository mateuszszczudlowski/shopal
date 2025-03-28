import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:template/src/config/theme/contants.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:template/src/modules/single_visit/widget/outline_primary_btn.dart';
import 'package:template/src/widgets/bottom_text.dart';

@RoutePage()
class SingleVisitView extends StatelessWidget {
  const SingleVisitView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: kCustomSmall10,
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 20.0, left: 20, right: 20, bottom: 2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onPressed: () => context.router.back(),
                      splashRadius: kCustomSmall2,
                      icon: Icon(Icons.arrow_back_ios_outlined,
                          size: kSmallGap,
                          color: Theme.of(context).colorScheme.secondary),
                    ),
                    Text(
                      'Szczegóły wizyty',
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            color: Theme.of(context)
                                .colorScheme
                                .secondaryContainer,
                            fontWeight: FontWeight.w800,
                            height: 1.4,
                            fontSize: 18,
                          ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: kDefaultPadding,
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
                              color:
                                  Theme.of(context).colorScheme.surfaceBright,
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
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
                                          color: Theme.of(context)
                                              .colorScheme
                                              .tertiary,
                                          width: kNavigationBorderHeight,
                                        ),
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius: kDefaultBorderRadius2,
                                            color: Theme.of(context)
                                                .scaffoldBackgroundColor,
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 9,
                                                right: 9,
                                                top: 7,
                                                bottom: 5),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Text(
                                                  AppLocalizations.of(context)!
                                                      .visitConfirmed,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .displayLarge!
                                                      .copyWith(
                                                        color: Theme.of(context)
                                                            .colorScheme
                                                            .secondaryContainer,
                                                        fontWeight:
                                                            FontWeight.w400,
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
                                          height: 20,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Text(
                                                  '130,00 zł',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .displayLarge!
                                                      .copyWith(
                                                        color: Theme.of(context)
                                                            .colorScheme
                                                            .secondaryContainer,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        height: 1,
                                                        fontSize: 18,
                                                      ),
                                                ),
                                                const SizedBox(
                                                  height: 6,
                                                ),
                                                Text(
                                                  '30min',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .displayLarge!
                                                      .copyWith(
                                                        color: Theme.of(context)
                                                            .colorScheme
                                                            .primaryContainer,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        height: 1,
                                                        fontSize: 12,
                                                      ),
                                                ),
                                              ],
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
              ),
              const SizedBox(
                height: 4,
              ),
              BottomText(
                onTap: () {},
                normalText: AppLocalizations.of(context)!.addToCalendar,
                boldText: AppLocalizations.of(context)!.addToCalendarBold,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 20.0, bottom: 40, left: 20, right: 20),
            child: Column(
              children: [
                // TODO add to calendar
                Row(
                  children: [
                    OutlinePrimaryBtn(
                      btnText: 'Zaakceptuj',
                      color: Theme.of(context).colorScheme.primary,
                      callback: () {},
                    ),
                  ],
                ),
                const SizedBox(
                  height: 14,
                ),
                Row(
                  children: [
                    OutlinePrimaryBtn(
                      btnText: 'Odwołaj',
                      color: Theme.of(context).colorScheme.secondary,
                      callback: () {},
                    ),
                    const SizedBox(
                      width: 14,
                    ),
                    OutlinePrimaryBtn(
                      btnText: 'Zmień',
                      color: Theme.of(context).colorScheme.secondary,
                      callback: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
