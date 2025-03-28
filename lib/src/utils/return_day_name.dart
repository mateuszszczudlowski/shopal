import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

String returnDayName(int index, BuildContext context) {
  String dayName = switch (index) {
    1 => AppLocalizations.of(context)!.day1,
    2 => AppLocalizations.of(context)!.day2,
    3 => AppLocalizations.of(context)!.day3,
    4 => AppLocalizations.of(context)!.day4,
    5 => AppLocalizations.of(context)!.day5,
    6 => AppLocalizations.of(context)!.day6,
    7 => AppLocalizations.of(context)!.day7,
    _ => '',
  };

  return dayName;
}
