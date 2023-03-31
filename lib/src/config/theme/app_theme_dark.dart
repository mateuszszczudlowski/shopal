import 'package:flutter/material.dart';
import 'package:template/src/config/theme/colors.dart';
import 'package:template/src/config/theme/contants.dart';
import 'package:template/src/config/theme/general_btn_styles.dart';
import 'package:template/src/config/theme/text.dart';

class AppThemeDark {
  static ThemeData get shopalThemeDark => ThemeData(
        extensions: <ThemeExtension<dynamic>>[
          GeneralBtnStyles(btnTextStyle: defaultTextBtnStyle)
        ],
        scaffoldBackgroundColor: blackColor,
        navigationBarTheme: NavigationBarThemeData(
          backgroundColor: mainColorDark,
          indicatorColor: Colors.transparent,
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          labelTextStyle: MaterialStateProperty.all(
            const TextStyle(
                height: 1.2,
                fontSize: 12.0,
                fontWeight: FontWeight.w600,
                color: lightPurpleColor),
          ),
        ),
        colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: lightPurpleColor,
            primaryContainer: introductionTextDark,
            secondary: whiteColor,
            secondaryContainer: mainColorDark,
            tertiary: bottomNavGrayColorDark,
            onTertiary: introductionTextDark,
            background: lightWhiteColor,
            onBackground: loginContainerBgDark,
            onSurface: borderColorDark,
            surface: semiWhiteColor),
        textTheme: appTextTheme.copyWith(
            titleMedium: const TextStyle(color: whiteColor)),
        // buttons
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            shape: const RoundedRectangleBorder(
              borderRadius: kDefaultBorderRadius,
            ),
            foregroundColor: blackColor,
            backgroundColor: lightPurpleColor,
            padding: const EdgeInsets.symmetric(vertical: 12.5),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12), // <-- Radius
            ),
            side: const BorderSide(width: 1.0, color: lightPurpleColor),
            foregroundColor: lightPurpleColor,
            backgroundColor: blackColor,
            padding: const EdgeInsets.symmetric(vertical: 12.5),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          hintStyle: const TextStyle(color: borderColorDark),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: const BorderSide(
              width: .5,
              style: BorderStyle.solid,
              color: borderColorDark,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: const BorderSide(
              width: .5,
              style: BorderStyle.solid,
              color: borderColorDark,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: const BorderSide(
              width: .5,
              style: BorderStyle.solid,
              color: borderColorDark,
            ),
          ),
        ),
      );
}
