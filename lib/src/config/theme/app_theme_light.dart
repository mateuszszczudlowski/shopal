import 'package:flutter/material.dart';
import 'package:template/src/config/theme/colors.dart';
import 'package:template/src/config/theme/contants.dart';
import 'package:template/src/config/theme/general_btn_styles.dart';
import 'package:template/src/config/theme/text.dart';

class AppThemeLight {
  static ThemeData get shopalThemeLight => ThemeData(
        extensions: <ThemeExtension<dynamic>>[
          GeneralBtnStyles(btnTextStyle: defaultTextBtnStyle)
        ],
        scaffoldBackgroundColor: whiteColor,
        navigationBarTheme: NavigationBarThemeData(
          backgroundColor: mainColorDark,
          indicatorColor: Colors.transparent,
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          labelTextStyle: MaterialStateProperty.all(
            const TextStyle(
                height: 1.2,
                fontSize: 12.0,
                fontWeight: FontWeight.w600,
                color: darkPurpleColor),
          ),
        ),
        colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: darkPurpleColor,
            primaryContainer: introductionText,
            secondaryContainer: mainColor,
            secondary: blackColor,
            tertiary: bottomNavGrayColorLight,
            onTertiary: introductionText,
            background: lightBlackColor,
            onBackground: loginContainerBg,
            onSurface: borderColorLight,
            surface: trueBlackColor),
        textTheme: appTextTheme.copyWith(
            titleMedium: const TextStyle(color: trueBlackColor)),
        // buttons
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            shape: const RoundedRectangleBorder(
              borderRadius: kDefaultBorderRadius,
            ),
            backgroundColor: darkPurpleColor,
            foregroundColor: whiteColor,
            padding: const EdgeInsets.symmetric(vertical: 12.5),
            // fixedSize: const Size.fromHeight(50)
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            shape: const RoundedRectangleBorder(
              borderRadius: kDefaultBorderRadius, // <-- Radius
            ),
            side: const BorderSide(width: 1.0, color: darkPurpleColor),
            foregroundColor: darkPurpleColor,
            backgroundColor: whiteColor,
            padding: const EdgeInsets.symmetric(vertical: 12.5),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          hintStyle: const TextStyle(color: borderColorLight),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: const BorderSide(
              width: .5,
              style: BorderStyle.solid,
              color: borderColorLight,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: const BorderSide(
              width: .5,
              style: BorderStyle.solid,
              color: borderColorLight,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: const BorderSide(
              width: .5,
              style: BorderStyle.solid,
              color: borderColorLight,
            ),
          ),
        ),
      );
}
