import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:template/src/repositories/app_theme_repository/app_theme_repository.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit()
      : super(ThemeState(isLightTheme: AppThemeRepository.getThemeSettings()));

  void toggleTheme({required bool value}) async {
    AppThemeRepository.putThemeSettings(value);
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
          statusBarBrightness: value ? Brightness.dark : Brightness.light,
          statusBarIconBrightness:
              value ? Brightness.dark : Brightness.light), // Or Brightness.dark
    );
    emit(ThemeState(isLightTheme: value));
  }
}
