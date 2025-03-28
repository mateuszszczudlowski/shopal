import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:template/src/config/routes.dart';
import 'package:template/src/config/theme/app_theme_dark.dart';
import 'package:template/src/config/theme/app_theme_light.dart';
import 'package:template/src/services/services_wrapper/services_provider.dart';
import 'package:template/src/services/services_wrapper/services_wrapper.dart';
import 'package:template/src/theme/cubit/theme_cubit.dart';

import 'repositories/supabase_repository/api/supabase_api.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _router = AppRouter();

  @override
  Widget build(BuildContext context) => ServicesProvider(
        child: BlocProvider(
          create: (context) => ThemeCubit(),
          child: BlocBuilder<ThemeCubit, ThemeState>(
            builder: (context, state) {
              return MaterialApp.router(
                routerDelegate: _router.delegate(
                  navRestorationScopeId: 'app',
                  deepLinkBuilder: (deepLink) {
                    if (client.supabaseClient.auth.currentSession != null) {
                      return const DeepLink.path('/main/');
                    } else {
                      return const DeepLink.path('/login/');
                    }
                  },
                ),
                routeInformationParser: _router.defaultRouteParser(),
                localizationsDelegates: const [
                  AppLocalizations.delegate,
                ],
                supportedLocales: const [
                  Locale('en', ''), // English, no country code
                ],
                onGenerateTitle: (BuildContext context) =>
                    AppLocalizations.of(context)!.appTitle,
                theme: AppThemeLight.shopalThemeLight,
                darkTheme: AppThemeDark.shopalThemeDark,
                themeMode: state.isLightTheme ?? false
                    ? ThemeMode.dark
                    : ThemeMode.light,
                builder: (context, child) => ServicesWrapper(
                  router: _router,
                  child: child!,
                ),
              );
            },
          ),
        ),
      );
}
