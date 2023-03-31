import 'dart:io';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

class AppThemeRepository {
  AppThemeRepository._();

  static dynamic themeBox;

  static Future<void> checkDatabaseExists() async {
    Directory themeDatabaseDir = await getApplicationSupportDirectory();
    Hive.init(themeDatabaseDir.path);
    if (await Hive.boxExists('AppThemeInfoBoxKey')) {
      themeBox = await Hive.openBox('AppThemeInfoBoxKey');
    } else {
      createDatabase();
    }
  }

  static Future<void> createDatabase() async {
    Directory themeDatabaseDir = await getApplicationSupportDirectory();
    Hive.init(themeDatabaseDir.path);
    themeBox = await Hive.openBox('AppThemeInfoBoxKey');
    await themeBox.put('appKey', false);
  }

  static putThemeSettings(bool? themeFlag) {
    themeBox.put('appKey', themeFlag);
  }

  static bool getThemeSettings() {
    bool themeValue = themeBox?.get('appKey') ?? false;
    return themeValue;
  }
}
