import 'package:auto_route/auto_route.dart';
import 'package:template/src/modules/account_screen/view/account_view.dart';
import 'package:template/src/modules/main_screen/widgets/pages/chat_page.dart';
import 'package:template/src/modules/language_screen/view/language_view.dart';
import 'package:template/src/modules/login_screen/view/login_view.dart';
import 'package:template/src/modules/main_screen/view/main_view.dart';
import 'package:template/src/modules/register_screen/view/register_view.dart';
import 'package:template/src/modules/main_screen/widgets/pages/search_page.dart';
import 'package:template/src/modules/single_chat_screen/view/single_chat_view.dart';
import 'package:template/src/modules/main_screen/widgets/pages/visit_page.dart';
import 'package:template/src/modules/main_screen/widgets/pages/home_page.dart';
import 'package:template/src/modules/welcome_screen/view/welcome_view.dart';
import 'package:template/src/modules/settings_screem/view/settings_view.dart';
import 'package:template/src/modules/specialist_screen/view/specialist_view.dart';
import 'package:template/src/modules/book_screen/view/book_view.dart';
import 'package:template/src/modules/visit_confirm_screen/view/visit_confirm_view.dart';
import 'package:template/src/modules/single_visit/view/single_visit_view.dart';
import 'package:template/src/modules/specialist_screen/widget/page/gallery_view.dart';

import 'package:flutter/material.dart';

part 'routes.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: WelcomeRoute.page,
          path: '/',
          initial: true,
        ),
        CustomRoute(
          page: MainRoute.page,
          path: '/main',
          transitionsBuilder: TransitionsBuilders.fadeIn,
          children: [
            AutoRoute(
              page: HomeRoute.page,
              path: 'home-page',
            ),
            AutoRoute(
              page: SearchRoute.page,
              path: 'search-page',
            ),
            AutoRoute(
              page: VisitRoute.page,
              path: 'visit-page',
            ),
            AutoRoute(
              page: ChatRoute.page,
              path: 'chat-page',
            ),
          ],
        ),
        AutoRoute(
          page: LoginRoute.page,
          path: '/login',
        ),
        AutoRoute(page: RegisterRoute.page, path: '/register'),
        CustomRoute(
          page: SettingsRoute.page,
          path: '/settings/:title',
          transitionsBuilder: TransitionsBuilders.fadeIn,
        ),
        CustomRoute(
          page: SingleChatRoute.page,
          path: '/single-chat',
          transitionsBuilder: TransitionsBuilders.fadeIn,
        ),
        CustomRoute(
          page: GalleryRoute.page,
          path: '/gallery',
          transitionsBuilder: TransitionsBuilders.fadeIn,
        ),
        CustomRoute(
          page: SpecialistRoute.page,
          path: '/specialist/:title',
          transitionsBuilder: TransitionsBuilders.fadeIn,
        ),
        CustomRoute(
          page: VisitConfirmRoute.page,
          path: '/visit-confirm',
          transitionsBuilder: TransitionsBuilders.fadeIn,
        ),
        CustomRoute(
          page: SingleVisitRoute.page,
          path: '/visit-single',
          transitionsBuilder: TransitionsBuilders.fadeIn,
        ),
        AutoRoute(page: AccountRoute.page, path: '/account'),
        AutoRoute(page: LanguageRoute.page, path: '/language'),
        AutoRoute(page: BookRoute.page, path: '/book'),
      ];
}
