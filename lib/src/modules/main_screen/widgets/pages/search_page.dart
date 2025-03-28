import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sliver_tools/sliver_tools.dart';
import 'package:template/src/config/theme/app_images.dart';
import 'package:template/src/config/theme/contants.dart';
import 'package:template/src/models/specialist_data.dart';
import 'package:template/src/modules/main_screen/bloc/bloc/main_bloc.dart';
import 'package:template/src/modules/main_screen/widgets/specialist_card_search.dart';
import 'package:template/src/repositories/supabase_repository/supabase_repository.dart';
import 'package:template/src/theme/cubit/theme_cubit.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:template/src/widgets/header_widget.dart';

@RoutePage()
class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainBloc(),
      child: LayoutBuilder(
        builder: (context, constraints) => Padding(
          padding: kHorizontalPaddingBottomZero,
          child: NestedScrollView(
              controller: _scrollController,
              headerSliverBuilder: (context, innerBoxIsScrolled) {
                return <Widget>[
                  SliverPinnedHeader(
                    child: BlocBuilder<ThemeCubit, ThemeState>(
                        builder: (context, state) {
                      return Container(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: kCustomSmall10,
                              ),
                              HeaderText(
                                headerText:
                                    AppLocalizations.of(context)!.searchHeader,
                              ),
                              const SizedBox(
                                height: kCustomSmall2,
                              ),
                              TextField(
                                onChanged: (text) {
                                  BlocProvider.of<MainBloc>(context,
                                          listen: false)
                                      .add(MainEvent.searchText(text));
                                  context
                                      .read<ISupabaseRepository>()
                                      .searchSpecialist(text);
                                },
                                style: const TextStyle(
                                    fontSize: kCustomSmall9,
                                    height: kLineHeight,
                                    fontWeight: FontWeight.w400),
                                decoration: InputDecoration(
                                    prefixIcon: Padding(
                                      padding:
                                          const EdgeInsets.all(kCustomSmall9),
                                      child: SvgPicture.asset(
                                        (state.isLightTheme!)
                                            ? AppImages.searchIconDark
                                            : AppImages.searchIconLight,
                                      ),
                                    ),
                                    hintText: AppLocalizations.of(context)!
                                        .hintSearch,
                                    labelStyle: Theme.of(context)
                                        .inputDecorationTheme
                                        .labelStyle),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                            ]),
                      );
                    }),
                  )
                ];
              },
              body: BlocBuilder<MainBloc, MainState>(
                builder: (context, state) {
                  return StreamBuilder<dynamic>(
                      stream: context
                          .read<ISupabaseRepository>()
                          .searchSpecialist(BlocProvider.of<MainBloc>(context)
                              .state
                              .searchValue),
                      builder: (context, snapshot) {
                        if (!snapshot.hasData &&
                            snapshot.connectionState ==
                                ConnectionState.waiting) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                        final items = snapshot.data ?? [];
                        if (items.length != 0) {
                          return ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            padding: EdgeInsets.zero,
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            itemCount: items.length,
                            itemBuilder: ((context, index) {
                              SpecialistData specialistData =
                                  SpecialistData.fromJson(items[index]);
                              return SpecialistCardSearch(
                                  specialistData: specialistData, index: index);
                            }),
                          );
                        } else {
                          return Center(
                            child: Text(
                              AppLocalizations.of(context)!.emptySearch,
                              textAlign: TextAlign.center,
                              style: Theme.of(context)
                                  .textTheme
                                  .titleLarge!
                                  .copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .primaryContainer,
                                      fontWeight: FontWeight.w400),
                            ),
                          );
                        }
                      });
                },
              )),
        ),
      ),
    );
  }
}
