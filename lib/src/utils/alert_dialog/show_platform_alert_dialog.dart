import 'dart:io';

import 'package:flutter/material.dart';
import 'package:template/src/widgets/alert_dialog/show_android_alert.dialog.dart';
import 'package:template/src/widgets/alert_dialog/show_cupertino_alert_dialog.dart';

class ShowPlatformAlertDialog {
  static Future<void> showPlatformAlertDialogAndroidIOS(
      {required BuildContext context,
      required VoidCallback voidCallback,
      required String alertHeader,
      required bool showInputTextField,
      required String alertSubheader}) {
    final platform =
        Platform.isAndroid ? TargetPlatform.android : TargetPlatform.iOS;

    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        if (platform == TargetPlatform.android) {
          return ShowAndroidAlertDialog(
              showInputTextField: showInputTextField,
              alertHeader: alertHeader,
              alertSubheader: alertSubheader,
              voidCallback: voidCallback);
        } else {
          return ShowCupertinoAlertDialog(
              showInputTextField: showInputTextField,
              alertHeader: alertHeader,
              alertSubheader: alertSubheader,
              voidCallback: voidCallback);
        }
      },
    );
  }

  static Future<T?> showPlatformAlertDialogWithCallbacks<T>({
    required BuildContext context,
    required Function() onYesTap,
    required Function() onNoTap,
    required String alertHeader,
    required String alertSubheader,
    required bool showInputTextField,
  }) {
    final platform =
        Platform.isAndroid ? TargetPlatform.android : TargetPlatform.iOS;
    return showDialog<T>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        if (platform == TargetPlatform.android) {
          return ShowAndroidAlertDialog(
            showInputTextField: showInputTextField,
            alertHeader: alertHeader,
            alertSubheader: alertSubheader,
            onNoTap: onNoTap,
            onYesTap: onYesTap,
          );
        } else {
          return ShowCupertinoAlertDialog(
            showInputTextField: showInputTextField,
            alertHeader: alertHeader,
            alertSubheader: alertSubheader,
            onNoTap: onNoTap,
            onYesTap: onYesTap,
          );
        }
      },
    );
  }
}
