import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:template/src/config/theme/contants.dart';
import 'package:template/src/services/authentication/bloc/authentication_bloc.dart';

class ShowAndroidAlertDialog extends StatelessWidget {
  final String alertHeader;
  final String alertSubheader;
  final Function()? onYesTap;
  final Function()? onNoTap;

  final VoidCallback? voidCallback;

  const ShowAndroidAlertDialog({
    Key? key,
    required this.alertHeader,
    required this.alertSubheader,
    this.voidCallback,
    this.onNoTap,
    this.onYesTap,
  })  : assert(onNoTap != null || voidCallback != null),
        assert(onYesTap != null || voidCallback != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        alertHeader,
        style: const TextStyle(fontSize: kIconSizeMedium2),
      ),
      content: SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            Text(
              alertSubheader,
              style: const TextStyle(color: Colors.black, height: kSmallBorder),
            ),
            const SizedBox(
              height: kIconSizeMedium2,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              style: const TextStyle(color: Colors.black),
              onChanged: (value) => context
                  .read<AuthenticationBloc>()
                  .add(ResetEmailChanged(value)),
              decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: kCustomSmall3),
                  labelStyle: const TextStyle(color: Colors.black),
                  filled: true,
                  fillColor: Colors.grey.shade50),
            ),
          ],
        ),
      ),
      actions: <Widget>[
        MaterialButton(
          onPressed: onNoTap,
          child: Text(AppLocalizations.of(context)!.canacel,
              style:
                  const TextStyle(color: Colors.blue, fontSize: kCustomSmall9)),
        ),
        MaterialButton(
          onPressed: onYesTap ?? voidCallback,
          child: Text(AppLocalizations.of(context)!.ok,
              style:
                  const TextStyle(color: Colors.blue, fontSize: kCustomSmall9)),
        ),
      ],
    );
  }
}
