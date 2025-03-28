import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:template/src/config/theme/contants.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:template/src/modules/main_screen/widgets/visit_list.dart';
import 'package:template/src/utils/string_extension.dart';
import 'package:template/src/utils/visit_type.dart';
import 'package:template/src/widgets/header_widget.dart';

@RoutePage()
class VisitView extends StatefulWidget {
  const VisitView({super.key});

  @override
  State<VisitView> createState() => _VisitViewState();
}

class _VisitViewState extends State<VisitView>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: kCustomSmall10,
          ),
          Padding(
            padding: kHorizontalPadding,
            child: HeaderText(
              headerText: AppLocalizations.of(context)!.visitsHeader,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: double.infinity,
            height: kCustomMediumGap,
            child: TabBar(
              controller: _tabController,
              padding: const EdgeInsets.all(8.0),
              isScrollable: true,
              labelPadding: kServicesTabLabelsPadding,
              indicatorSize: TabBarIndicatorSize.label,
              labelStyle: Theme.of(context).textTheme.displaySmall!.copyWith(
                  height: kLineHeight,
                  color: Theme.of(context).colorScheme.secondaryContainer),
              tabs: [
                // Tab(
                //   icon: Text(
                //     AppLocalizations.of(context)!.visitConfirmed2.capitalize(),
                //     style: const TextStyle(fontSize: 16),
                //   ),
                // ),
                // Tab(
                //   icon: Text(
                //     AppLocalizations.of(context)!
                //         .visitUnconfirmed2
                //         .capitalize(),
                //     style: const TextStyle(fontSize: 16),
                //   ),
                // ),
                Tab(
                  icon: Text(
                    AppLocalizations.of(context)!.visitUpcoming2.capitalize(),
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
                Tab(
                  icon: Text(
                    AppLocalizations.of(context)!.visitEnded2.capitalize(),
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
                Tab(
                  icon: Text(
                    AppLocalizations.of(context)!.visitCanceled2.capitalize(),
                    style: const TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: kHorizontalPaddingBottomZero,
              child: TabBarView(
                controller: _tabController,
                physics: const NeverScrollableScrollPhysics(),
                children: const [
                  // VisitList(
                  //   visitType: VisitType.confirmed,
                  //   visitNumber: 2,
                  // ),
                  // VisitList(
                  //   visitType: VisitType.unconfirmed,
                  //   visitNumber: 3,
                  // ),
                  VisitList(
                    visitType: VisitType.upcoming,
                    visitNumber: 2,
                  ),
                  VisitList(
                    visitType: VisitType.ended,
                    visitNumber: 3,
                  ),
                  VisitList(
                    visitType: VisitType.canceled,
                    visitNumber: 2,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
