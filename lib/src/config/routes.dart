import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:template/src/config/routes/account.dart';
import 'package:template/src/config/routes/language.dart';
import 'package:template/src/config/routes/login.dart';
import 'package:template/src/config/routes/main.dart';
import 'package:template/src/config/routes/main_page.dart';
import 'package:template/src/config/routes/messages_page.dart';
import 'package:template/src/config/routes/search_page.dart';
import 'package:template/src/config/routes/settings.dart';
import 'package:template/src/config/routes/visit_page.dart';
import 'package:template/src/config/routes/welcome.dart';
import 'package:template/src/config/routes/register.dart';

part 'routes.gr.dart';

class Routes {
  static const welcome = WelcomeRouteHelper();
  static const login = LoginRouteHelper();
  static const register = RegisterRouteHelper();
  static const main = MainRouteHelper();
  static const settings = SettingsRouteHelper();
  static const account = AccountRouteHelper();
  static const mainPage = MainPageHelper();
  static const searchPage = SearchPageHelper();
  static const visitPage = VisitPageHelper();
  static const messagesPage = MessagesPageHelper();
  static const language = LanguageRouteHelper();
}

@AdaptiveAutoRouter(routes: [
  AutoRoute(
    page: WelcomeRouteHelper.widget,
    path: WelcomeRouteHelper.path,
    initial: true,
  ),
  CustomRoute(
    page: MainRouteHelper.widget,
    path: MainRouteHelper.path,
    transitionsBuilder: TransitionsBuilders.fadeIn,
    children: [
      AutoRoute(
        page: MainPageHelper.widget,
        path: MainPageHelper.path,
      ),
      AutoRoute(
        page: SearchPageHelper.widget,
        path: SearchPageHelper.path,
      ),
      AutoRoute(
        page: VisitPageHelper.widget,
        path: VisitPageHelper.path,
      ),
      AutoRoute(
        page: MessagesPageHelper.widget,
        path: MessagesPageHelper.path,
      ),
    ],
  ),
  AutoRoute(
    page: LoginRouteHelper.widget,
    path: LoginRouteHelper.path,
  ),
  AutoRoute(page: RegisterRouteHelper.widget, path: RegisterRouteHelper.path),
  CustomRoute(
    page: SettingsRouteHelper.widget,
    path: SettingsRouteHelper.path,
    transitionsBuilder: TransitionsBuilders.fadeIn,
  ),
  AutoRoute(page: AccountRouteHelper.widget, path: AccountRouteHelper.path),
  AutoRoute(page: LanguageRouteHelper.widget, path: LanguageRouteHelper.path),
])
class AppRouter extends _$AppRouter {}
