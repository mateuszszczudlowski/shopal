import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sliver_tools/sliver_tools.dart';
import 'package:template/src/config/theme/colors.dart';
import 'package:template/src/config/theme/contants.dart';
import 'package:template/src/models/specialist_data.dart';
import 'package:template/src/modules/specialist_screen/bloc/specialist_view_bloc.dart';
import 'package:template/src/modules/specialist_screen/widget/page/specialist_details_page.dart';
import 'package:template/src/modules/specialist_screen/widget/page/specialist_portfolio_page.dart';
import 'package:template/src/modules/specialist_screen/widget/page/specialist_reviews_page.dart';
import 'package:template/src/modules/specialist_screen/widget/page/specialist_services_page.dart';
import 'package:template/src/modules/specialist_screen/widget/specialist_background.dart';
import 'package:template/src/repositories/supabase_repository/supabase_repository.dart';
import 'package:template/src/theme/cubit/theme_cubit.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

@RoutePage()
class SpecialistView extends StatefulWidget {
  final String specialistId;
  const SpecialistView({super.key, required this.specialistId});

  @override
  State<SpecialistView> createState() => _SpecialistViewState();
}

class _SpecialistViewState extends State<SpecialistView>
    with TickerProviderStateMixin {
  ScrollController _scrollController = ScrollController();
  TabController? controller;

  final kExpandedHeight = 300;

  double get _horizontalTitlePadding {
    const kBasePadding = 18.0;
    const kMultiplier = 0.5;

    if (_scrollController.hasClients) {
      if (_scrollController.offset < (kExpandedHeight / 2)) {
        // In case 50%-100% of the expanded height is viewed
        return kBasePadding;
      }

      if (_scrollController.offset > (kExpandedHeight - kToolbarHeight)) {
        // In case 0% of the expanded height is viewed
        return (kExpandedHeight / 2 - kToolbarHeight) * kMultiplier +
            kBasePadding;
      }

      // In case 0%-50% of the expanded height is viewed
      return (_scrollController.offset - (kExpandedHeight / 2)) * kMultiplier +
          kBasePadding;
    }
    return kBasePadding;
  }

  void _scrollToBottom(double offScroll) {
    if (_scrollController.hasClients) {
      _scrollController.animateTo(offScroll,
          duration: const Duration(milliseconds: 500), curve: Curves.ease);
    } else {
      Timer(const Duration(milliseconds: 500), () => _scrollToBottom(290));
    }
  }

  @override
  void initState() {
    _scrollController = ScrollController()..addListener(() => setState(() {}));

    controller =
        TabController(length: 4, vsync: this, animationDuration: Duration.zero);

    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => SpecialistViewBloc(),
        child: Container(
          color: Theme.of(context).scaffoldBackgroundColor,
          child: StreamBuilder<dynamic>(
              stream: context
                  .read<ISupabaseRepository>()
                  .getOpinions(widget.specialistId),
              builder: (context, snapshot) {
                if (!snapshot.hasData &&
                    snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                SpecialistData specialistData =
                    SpecialistData.fromJson(snapshot.data[0]);
                context.read<SpecialistViewBloc>().add(
                    SpecialistViewEvent.calculateAverageRating(
                        specialistData.opinions!));
                return NestedScrollView(
                  controller: _scrollController,
                  headerSliverBuilder: (context, innerBoxIsScrolled) {
                    return <Widget>[
                      SliverAppBar(
                        backgroundColor:
                            Theme.of(context).scaffoldBackgroundColor,
                        expandedHeight: kSpecialistImage,
                        pinned: true,
                        floating: true,
                        elevation: 0,
                        leadingWidth: 88,
                        leading: Padding(
                          padding: const EdgeInsets.only(
                            top: 5.0,
                          ),
                          child: IconButton(
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onPressed: () => context.router.back(),
                            splashRadius: kSplashSizeMedium,
                            icon: AnimatedContainer(
                              duration: const Duration(milliseconds: 700),
                              curve: Curves.easeInOut,
                              child: BlocBuilder<ThemeCubit, ThemeState>(
                                builder: (context, state) {
                                  return (state.isLightTheme!)
                                      ? const Icon(
                                          Icons.arrow_back_ios_outlined,
                                          size: kIconSizeMedium2,
                                          color: whiteColor)
                                      : Icon(Icons.arrow_back_ios_outlined,
                                          size: kIconSizeMedium2,
                                          color: (_horizontalTitlePadding < 20)
                                              ? whiteColor
                                              : blackColor);
                                },
                              ),
                            ),
                          ),
                        ),
                        flexibleSpace: FlexibleSpaceBar(
                          centerTitle: false,
                          collapseMode: CollapseMode.pin,
                          expandedTitleScale: 1.2,
                          title: Text(
                            specialistData.name,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            softWrap: true,
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge!
                                .copyWith(
                                  fontWeight: FontWeight.w800,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .secondaryContainer,
                                  height: 1,
                                  fontSize: 20,
                                ),
                          ),
                          titlePadding: EdgeInsets.symmetric(
                              vertical: 15.0,
                              horizontal: _horizontalTitlePadding),
                          background: SpecialistBackground(
                            specialistData: specialistData,
                            height: kSpecialistImage,
                          ),
                        ),
                      ),
                      SliverToBoxAdapter(
                        child: Container(
                            color: Theme.of(context).scaffoldBackgroundColor,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 18, vertical: 0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  specialistData.adress!,
                                  softWrap: true,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primaryContainer),
                                ),
                                const SizedBox(
                                  height: kCustomSmall2,
                                ),
                              ],
                            )),
                      ),
                      SliverPinnedHeader(
                        child: Container(
                          height: kCustomMediumGap,
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
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TabBar(
                              onTap: (index) {
                                switch (index) {
                                  case 0:
                                    WidgetsBinding.instance
                                        .addPostFrameCallback(
                                            (_) => _scrollToBottom(0));
                                    break;
                                  default:
                                    if (_scrollController.offset <= 290) {
                                      WidgetsBinding.instance
                                          .addPostFrameCallback(
                                              (_) => _scrollToBottom(290));
                                    }

                                    break;
                                }
                              },
                              controller: controller,
                              isScrollable: true,
                              labelPadding: kServicesTabLabelsPadding,
                              indicatorSize: TabBarIndicatorSize.label,
                              labelStyle: Theme.of(context)
                                  .textTheme
                                  .displaySmall!
                                  .copyWith(
                                      height: kLineHeight,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondaryContainer),
                              tabs: [
                                Tab(
                                  text: AppLocalizations.of(context)!.services,
                                ),
                                Tab(
                                  text: AppLocalizations.of(context)!.opinions,
                                ),
                                Tab(
                                  text: AppLocalizations.of(context)!.portfolio,
                                ),
                                Tab(
                                  text: AppLocalizations.of(context)!.details,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ];
                  },
                  body: TabBarView(
                    physics: const NeverScrollableScrollPhysics(),
                    controller: controller,
                    children: [
                      SpecialistServicesPage(
                        specialistData: specialistData,
                      ),
                      SpecialistReviewsPage(
                        specialistData: specialistData,
                      ),
                      SpecialistPortfolioPage(
                        specialistData: specialistData,
                      ),
                      SpecialistDetailsPage(
                        specialistData: specialistData,
                      )
                    ],
                  ),
                );
              }),
        ),
      ),
    );
  }
}
