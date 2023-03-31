import 'dart:io';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

class ThemeDatabaseService {
//Create a global Singleton out of this class. All fields and methods used
//in this class should be static to be accessible globally.
  ThemeDatabaseService._();
//This is the field variable for the Hive database
  static var themeBox = Hive.box('');
//This method is used to check if the database exists
  static Future<void> checkDatabaseExists() async {
    Directory themeDatabaseDir = await getApplicationSupportDirectory();
//Initialise the database
    Hive.init(themeDatabaseDir.path);
//If the database exists, open it. Else, call the createDatabase method
    if (await Hive.boxExists('AppThemeInfoBoxKey')) {
      themeBox = await Hive.openBox('AppThemeInfoBoxKey');
    } else {
      createDatabase();
    }
  }

//This method is used to create the database
  static Future<void> createDatabase() async {
    Directory themeDatabaseDir = await getApplicationSupportDirectory();
//Initialise the database
    Hive.init(themeDatabaseDir.path);
//Register the Hive database Type Adapter
//Open the database
    themeBox = await Hive.openBox('AppThemeInfoBoxKey');
//Objects in a Hive database are stored as a key-value pair
//Store the default theme setting in the database as a boolean for the “themeSettings”
//key. In this case, the flag is set to “true” for light mode
    await themeBox.put('appKey', true);
  }

//This method is used to update the theme settings of the app.
//The “themeFlag” parameter is passed to this method to update the boolean
//value of the “themeSettings” key-value pair in the database
  static putThemeSettings(bool? themeFlag) {
    themeBox.put('appKey', themeFlag);
  }

//This method return a Boolean and is used to get the value of the “themeSettings”
//key-value pair if the “themeBox” is not null. If it is null, then a default
//value of “true” is returned
  static bool getThemeSettings() {
    bool themeValue = themeBox.get('appKey') ?? true;
    return themeValue;
  }
}
