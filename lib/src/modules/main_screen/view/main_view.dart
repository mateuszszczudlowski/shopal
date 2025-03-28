import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:template/src/config/routes.dart';
import 'package:template/src/config/theme/app_images.dart';
import 'package:template/src/config/theme/contants.dart';
import 'package:template/src/modules/main_screen/widgets/bottom_navigation/bottom_nav_destinaton.dart';
import 'package:template/src/theme/cubit/theme_cubit.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

@RoutePage()
class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        HomeRoute(),
        SearchRoute(),
        VisitRoute(),
        ChatRoute(),
      ],
      builder: (context, child) {
        return Scaffold(
          body: child,
          bottomNavigationBar: ClipRect(
            clipBehavior: Clip.hardEdge,
            child: Container(
              height: kLargeGap4,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Theme.of(context).colorScheme.tertiary,
                    width: kNavigationBorderHeight,
                  ),
                ),
              ),
              child: BlocBuilder<ThemeCubit, ThemeState>(
                builder: (context, state) {
                  final tabsRouter = AutoTabsRouter.of(context);
                  return NavigationBar(
                    onDestinationSelected: (value) {
                      tabsRouter.setActiveIndex(value);
                    },
                    selectedIndex: tabsRouter.activeIndex,
                    animationDuration:
                        const Duration(milliseconds: kAnimationNavigation),
                    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                    destinations: <Widget>[
                      (state.isLightTheme!)
                          ? BottomNavDestination(
                              selectedIcon: AppImages.homeIconActiveDark,
                              selectedIconSize: kIconSizeMedium2,
                              baseIcon: AppImages.homeIconInActiveDark,
                              baseIconSize: kIconSizeMedium2,
                              navLabel: AppLocalizations.of(context)!
                                  .yourShopalHeader,
                            )
                          : BottomNavDestination(
                              selectedIcon: AppImages.homeIconActiveLight,
                              selectedIconSize: kIconSizeMedium2,
                              baseIcon: AppImages.homeIconInActiveLight,
                              baseIconSize: kIconSizeMedium2,
                              navLabel: AppLocalizations.of(context)!
                                  .yourShopalHeader,
                            ),
                      (state.isLightTheme!)
                          ? NavigationDestination(
                              tooltip: '',
                              selectedIcon: SvgPicture.asset(
                                AppImages.searchIconDark,
                                width: kIconSizeMedium2,
                              ),
                              icon: SvgPicture.asset(
                                AppImages.searchIconUnselectedDark,
                                width: kIconSizeMedium2,
                              ),
                              label: AppLocalizations.of(context)!.searchHeader,
                            )
                          : NavigationDestination(
                              tooltip: '',
                              selectedIcon: SvgPicture.asset(
                                AppImages.searchIconLight,
                                width: kIconSizeMedium2,
                              ),
                              icon: SvgPicture.asset(
                                AppImages.searchIconUnselectedLight,
                                width: kIconSizeMedium2,
                              ),
                              label: AppLocalizations.of(context)!.searchHeader,
                            ),
                      (state.isLightTheme!)
                          ? NavigationDestination(
                              tooltip: '',
                              selectedIcon: SvgPicture.asset(
                                AppImages.calendarSelectedDark,
                                width: kIconSizeMedium,
                              ),
                              icon: SvgPicture.asset(
                                AppImages.calendarUnSelectedDark,
                                width: kIconSizeMedium,
                              ),
                              label: AppLocalizations.of(context)!.visitsHeader,
                            )
                          : NavigationDestination(
                              tooltip: '',
                              selectedIcon: SvgPicture.asset(
                                AppImages.calendarSelectedLight,
                                width: kIconSizeMedium,
                              ),
                              icon: SvgPicture.asset(
                                AppImages.calendarUnSelectedLight,
                                width: kIconSizeMedium,
                              ),
                              label: AppLocalizations.of(context)!.visitsHeader,
                            ),
                      (state.isLightTheme!)
                          ? NavigationDestination(
                              tooltip: '',
                              selectedIcon: SvgPicture.asset(
                                AppImages.messageSelecteDark,
                                width: kIconSizeMedium3,
                              ),
                              icon: SvgPicture.asset(
                                AppImages.messageUnSelecteDark,
                                width: kIconSizeMedium3,
                              ),
                              label: AppLocalizations.of(context)!.chatsHeader,
                            )
                          : NavigationDestination(
                              tooltip: '',
                              selectedIcon: SvgPicture.asset(
                                AppImages.messageSelecteLight,
                                width: kIconSizeMedium3,
                              ),
                              icon: SvgPicture.asset(
                                AppImages.messageUnSelecteLight,
                                width: kIconSizeMedium3,
                              ),
                              label: AppLocalizations.of(context)!.chatsHeader,
                            ),
                    ],
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
