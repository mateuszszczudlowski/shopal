// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:template/src/config/routes.dart';
import 'package:template/src/config/theme/contants.dart';
import 'package:template/src/modules/settings_screem/widgets/settings_row.dart';
import 'package:template/src/modules/settings_screem/widgets/theme_switcher.dart';
import 'package:template/src/services/authentication/bloc/authentication_bloc.dart';
import 'package:template/src/utils/alert_dialog/show_platform_alert_dialog.dart';
import 'package:template/src/widgets/bottom_text.dart';
import 'package:template/src/widgets/header_widget.dart';
import 'package:template/src/widgets/settings_header.dart';

class SettingsView extends StatelessWidget {
  final dynamic user;
  const SettingsView({super.key, required this.user});

  Future<void> _deleteAccount(BuildContext context) async {
    await ShowPlatformAlertDialog.showPlatformAlertDialogWithCallbacks(
        context: context,
        onNoTap: () {
          context.router.pop(false).then((value) => context
              .read<AuthenticationBloc>()
              .add(const ChangeValidationStatus()));
        },
        onYesTap: () =>
            context.read<AuthenticationBloc>().add(const ResetPassword()),
        alertHeader: AppLocalizations.of(context)!.resetPasswordHeader,
        alertSubheader: AppLocalizations.of(context)!.resetPasswordSubheader);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: kDefaultPadding,
        child: LayoutBuilder(
          builder: (context, constraints) => SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: IntrinsicHeight(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: kCustomSmall10,
                    ),
                    IconButton(
                      onPressed: () =>
                          context.router.push(const MainViewRoute()),
                      splashRadius: kCustomSmall2,
                      icon: Icon(Icons.arrow_back_ios_outlined,
                          size: kSmallGap,
                          color: Theme.of(context).colorScheme.secondary),
                    ),
                    const SizedBox(
                      height: kCustomSmall2,
                    ),
                    HeaderText(
                      headerText: AppLocalizations.of(context)!.settingsHeader,
                    ),
                    const SizedBox(
                      height: kCustomSmall10,
                    ),
                    SettingsHeader(
                      headerText: AppLocalizations.of(context)!.accountHeader,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SettingsRow(
                      header: BlocProvider.of<AuthenticationBloc>(context)
                          .state
                          .userProfile!
                          .userName!,
                      subheader: AppLocalizations.of(context)!.personalData,
                      icon: Icons.person,
                      callback: () {
                        context.router.pushNamed(
                          Routes.account.generatePath(),
                        );
                      },
                    ),
                    const SizedBox(
                      height: kCustomSmall10,
                    ),
                    SettingsHeader(
                      headerText:
                          AppLocalizations.of(context)!.systemSettingsHeader,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const ThemeSwitcher(),
                    const SizedBox(
                      height: 20,
                    ),
                    SettingsRow(
                      header: AppLocalizations.of(context)!.languageHeader,
                      icon: Icons.public,
                      subheader: AppLocalizations.of(context)!.language1,
                      callback: () {
                        context.router.pushNamed(
                          Routes.language.generatePath(),
                        );
                      },
                    ),
                    const Spacer(),
                    BottomText(
                      onTap: () => _deleteAccount(context),
                      normalText: AppLocalizations.of(context)!.deleteAccount,
                      boldText: AppLocalizations.of(context)!.deleteAccountBold,
                    ),
                    const SizedBox(
                      height: kSmallGap,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
