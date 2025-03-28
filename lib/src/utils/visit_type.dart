import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

enum VisitType { upcoming, ended, canceled, confirmed, unconfirmed }

String translateVisit(VisitType visitType, BuildContext context) {
  switch (visitType) {
    case VisitType.upcoming:
      return AppLocalizations.of(context)!.visitUpcoming;
    case VisitType.confirmed:
      return AppLocalizations.of(context)!.visitConfirmed;
    case VisitType.unconfirmed:
      return AppLocalizations.of(context)!.visitUnconfirmed;
    case VisitType.canceled:
      return AppLocalizations.of(context)!.visitCanceled;
    case VisitType.ended:
      return AppLocalizations.of(context)!.visitEnded;
  }
}

String translateVisitHeader(VisitType visitType, BuildContext context) {
  switch (visitType) {
    case VisitType.upcoming:
      return AppLocalizations.of(context)!.visitUpcomingHeader;
    case VisitType.confirmed:
      return AppLocalizations.of(context)!.visitConfirmeHeader;
    case VisitType.unconfirmed:
      return AppLocalizations.of(context)!.visitUnconfirmeHeader;
    case VisitType.canceled:
      return AppLocalizations.of(context)!.visitCanceledHeader;
    case VisitType.ended:
      return AppLocalizations.of(context)!.visitEndedHeader;
  }
}
