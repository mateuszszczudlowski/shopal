import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:template/src/config/theme/contants.dart';
import 'package:template/src/services/authentication/bloc/authentication_bloc.dart';
import 'package:template/src/utils/loading_status.dart';

class ShowCupertinoAlertDialog extends StatelessWidget {
  final String alertHeader;
  final String alertSubheader;
  final VoidCallback? voidCallback;

  final Function()? onYesTap;
  final Function()? onNoTap;

  const ShowCupertinoAlertDialog({
    super.key,
    required this.alertHeader,
    required this.alertSubheader,
    this.voidCallback,
    this.onNoTap,
    this.onYesTap,
  })  : assert(onNoTap != null || voidCallback != null),
        assert(onYesTap != null || voidCallback != null);

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text(alertHeader),
      content: Column(
        children: [
          Text(alertSubheader),
          const SizedBox(
            height: kCustomSmall3,
          ),
          Card(
            color: Colors.transparent,
            elevation: 0.0,
            child: Column(
              children: <Widget>[
                BlocBuilder<AuthenticationBloc, AuthenticationState>(
                  builder: (context, state) {
                    return TextField(
                      keyboardType: TextInputType.emailAddress,
                      style: const TextStyle(color: Colors.black),
                      onChanged: (value) => context
                          .read<AuthenticationBloc>()
                          .add(ResetEmailChanged(value)),
                      decoration: InputDecoration(
                          errorText: (context
                                  .read<AuthenticationBloc>()
                                  .state
                                  .validationStatus is FailedStatus)
                              ? 'Unable to validate email address: invalid format.'
                              : null,
                          errorMaxLines: 2,
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: kCustomSmall3),
                          labelStyle: const TextStyle(color: Colors.black),
                          filled: true,
                          fillColor: Colors.grey.shade50),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      actions: <Widget>[
        CupertinoButton(
            onPressed: onNoTap,
            child: Text(
              AppLocalizations.of(context)!.canacel,
              style: const TextStyle(color: Colors.blue),
            )),
        CupertinoButton(
          onPressed: onYesTap ?? voidCallback,
          child: Text(
            AppLocalizations.of(context)!.ok,
            style: const TextStyle(color: Colors.blue),
          ),
        )
      ],
    );
  }
}
