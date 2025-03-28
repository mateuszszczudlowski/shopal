import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:template/src/config/routes.dart';
import 'package:template/src/config/theme/contants.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:template/src/config/theme/general_btn_styles.dart';
import 'package:template/src/modules/book_screen/bloc/book_bloc.dart';
import 'package:template/src/modules/book_screen/widget/extra_info.dart';
import 'package:template/src/modules/book_screen/widget/event_chip.dart';
import 'package:template/src/modules/specialist_screen/widget/worker_item.dart';
import 'package:template/src/utils/calendar/book_calendar.dart';
import 'package:template/src/utils/date_formater.dart';

@RoutePage()
class BookView extends StatefulWidget {
  const BookView({super.key});

  @override
  State<BookView> createState() => _BookViewState();
}

class _BookViewState extends State<BookView> {
  Map<String, List<String>> openingHours = {
    '2024-02-24': ['01:30', '02:30', '03:30'],
    '2024-02-28': ['09:30', '16:30', '18:30'],
    '2024-02-29': ['10:30', '12:30', '14:30'],
  };
  DateTime now = DateTime.now();
  @override
  Widget build(BuildContext context) {
    final GeneralBtnStyles generalBtnStyles = Theme.of(context).extension()!;

    return BlocProvider(
      create: (context) => BookBloc()
        ..add(
            BookEvent.getWorkingHours(convertDateTimeDisplay(now.toString()))),
      child: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) => SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: Column(
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
                          AppLocalizations.of(context)!.bookVisit,
                          textAlign: TextAlign.center,
                          style:
                              Theme.of(context).textTheme.titleLarge!.copyWith(
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
                  Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      border: Border(
                        bottom: BorderSide(
                          color: Theme.of(context).colorScheme.tertiary,
                          width: kNavigationBorderHeight,
                        ),
                        top: BorderSide(
                          color: Theme.of(context).colorScheme.tertiary,
                          width: kNavigationBorderHeight,
                        ),
                      ),
                    ),
                    width: double.infinity,
                    height: 120,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 18.0),
                      child: ListView.builder(
                        padding: EdgeInsets.zero,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: 2,
                        itemBuilder: ((context, index) {
                          return const WorkerItem(
                            workerName: "Mateusz",
                          );
                        }),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const BookCalendar(),
                  const SizedBox(
                    height: 10,
                  ),
                  BlocBuilder<BookBloc, BookState>(
                    builder: (context, state) {
                      return Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).scaffoldBackgroundColor,
                          border: Border(
                            bottom: BorderSide(
                              color: Theme.of(context).colorScheme.tertiary,
                              width: kNavigationBorderHeight,
                            ),
                            top: BorderSide(
                              color: Theme.of(context).colorScheme.tertiary,
                              width: kNavigationBorderHeight,
                            ),
                          ),
                        ),
                        width: double.infinity,
                        height: 100,
                        child: Padding(
                            padding: const EdgeInsets.only(top: 0.0),
                            child: EventChip(
                                openingHours:
                                    openingHours[state.workingHours])),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      padding: const EdgeInsets.only(
                          top: 20, left: 20, right: 20, bottom: 20),
                      decoration: BoxDecoration(
                        borderRadius: kDefaultBorderRadius,
                        color: Theme.of(context).colorScheme.surfaceBright,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: kTopHorizontalPaddingSmall,
                            child: SizedBox(
                              width: 200,
                              child: Text(
                                'style consultation 0',
                                style: Theme.of(context)
                                    .textTheme
                                    .displaySmall!
                                    .copyWith(
                                        height: 1.2,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .secondaryContainer,
                                        fontSize: 16),
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          '120.00 zł',
                                          style: Theme.of(context)
                                              .textTheme
                                              .displaySmall!
                                              .copyWith(
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .secondaryContainer,
                                                  fontSize: 16,
                                                  height: 1),
                                        ),
                                        const SizedBox(
                                          height: kCustomSmall4,
                                        ),
                                        Text(
                                          '30min',
                                          style: Theme.of(context)
                                              .textTheme
                                              .displaySmall!
                                              .copyWith(
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .primaryContainer,
                                                  fontSize: 12,
                                                  height: 1),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    width: kSmallGap7,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: SizedBox(
          child: Padding(
            padding: const EdgeInsets.only(
                top: 20.0, bottom: 30.0, left: 20.0, right: 20.0),
            child: SizedBox(
              height: 150,
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 110,
                        height: 70,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '1200.00 zł',
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall!
                                  .copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondaryContainer,
                                      fontSize: 16,
                                      height: 1),
                            ),
                            const SizedBox(
                              height: kCustomSmall4,
                            ),
                            Text(
                              '30min',
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall!
                                  .copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .primaryContainer,
                                      fontSize: 12,
                                      height: 1),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: TextButton(
                            onPressed: () {
                              context.router.push(const VisitConfirmRoute());
                            },
                            child: Text(
                              AppLocalizations.of(context)!.bookButton,
                              style: generalBtnStyles.btnTextStyle,
                            )),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ExtraInfo(
                      normalText: AppLocalizations.of(context)!.gdprInfo,
                      boldText: AppLocalizations.of(context)!.gdprInfoMore)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
