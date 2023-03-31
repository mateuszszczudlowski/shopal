import 'package:flutter/material.dart';

class GeneralBtnStyles extends ThemeExtension<GeneralBtnStyles> {
  final TextStyle? btnTextStyle;

  GeneralBtnStyles({required this.btnTextStyle});

  @override
  GeneralBtnStyles copyWith() {
    return GeneralBtnStyles(btnTextStyle: btnTextStyle);
  }

  @override
  GeneralBtnStyles lerp(ThemeExtension<GeneralBtnStyles>? other, double t) {
    if (other is! GeneralBtnStyles) {
      return this;
    }
    return GeneralBtnStyles(
        btnTextStyle: TextStyle.lerp(btnTextStyle, other.btnTextStyle, t));
  }
}

TextStyle defaultTextBtnStyle = const TextStyle(
    fontFamily: 'Poppins', fontWeight: FontWeight.w600, fontSize: 16);
