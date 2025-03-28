import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:template/src/config/theme/contants.dart';
import 'package:template/src/modules/account_screen/bloc/bloc/account_bloc.dart';
import 'package:template/src/modules/account_screen/bloc/bloc/account_bloc_provider.dart';
import 'package:template/src/repositories/supabase_repository/api/supabase_api.dart';
import 'package:template/src/services/authentication/bloc/authentication_bloc.dart';
import 'package:template/src/utils/alert_dialog/show_platform_alert_dialog.dart';
import 'package:template/src/utils/loading_status.dart';
import 'package:template/src/widgets/bottom_text.dart';
import 'package:template/src/widgets/default_input.dart';
import 'package:template/src/widgets/header_widget.dart';
import 'package:template/src/config/theme/general_btn_styles.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

@RoutePage()
class AccountView extends StatelessWidget implements AutoRouteWrapper {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    final GeneralBtnStyles generalBtnStyles = Theme.of(context).extension()!;
    return Scaffold(
      body: BlocListener<AuthenticationBloc, AuthenticationState>(
        listener: (context, state) {
          if (state.validationStatus is SuccessStatus) {
            context.router.pop(false);
          } else {
            log('error');
          }
        },
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: Padding(
            padding: kDefaultPadding,
            child: LayoutBuilder(
              builder: (context, constraints) => SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraints.maxHeight),
                  child: IntrinsicHeight(
                    child: BlocBuilder<AccountBloc, AccountState>(
                      builder: (context, state) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: kCustomSmall10,
                            ),
                            IconButton(
                              onPressed: () => context.router.pop(),
                              splashRadius: kCustomSmall2,
                              icon: Icon(Icons.arrow_back_ios_outlined,
                                  size: kSmallGap,
                                  color:
                                      Theme.of(context).colorScheme.secondary),
                            ),
                            const SizedBox(
                              height: kCustomSmall2,
                            ),
                            HeaderText(
                              headerText:
                                  AppLocalizations.of(context)!.accountHeader,
                            ),
                            const SizedBox(
                              height: kMediumGap3,
                            ),
                            Column(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    AppLocalizations.of(context)!
                                        .loginTextField1,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium!
                                        .copyWith(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .secondary),
                                  ),
                                ),
                                const SizedBox(
                                  height: kCustomSmall5,
                                ),
                                DefaultInput(
                                  errorText: state.email.isEmpty &&
                                          state.name.isEmpty
                                      ? state.validAccountForm
                                          ? 'Change value of one of the fields'
                                          : null
                                      : null,
                                  buildContext: context,
                                  prefixIcon: Icons.person_outline,
                                  hintText: BlocProvider.of<AuthenticationBloc>(
                                          context)
                                      .state
                                      .userProfile!
                                      .userName!,
                                  onChanged: (value) => context
                                      .read<AccountBloc>()
                                      .add(NameChanged(value)),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: kSmallGap6,
                            ),
                            Column(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    AppLocalizations.of(context)!
                                        .loginTextField3,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium!
                                        .copyWith(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .secondary),
                                  ),
                                ),
                                const SizedBox(
                                  height: kCustomSmall5,
                                ),
                                DefaultInput(
                                  errorText: state.validAccountForm
                                      ? 'Change value of one of the fields!'
                                      : state.loadingStatus is FailedStatus
                                          ? 'Invalid email format'
                                          : null,
                                  buildContext: context,
                                  prefixIcon: Icons.mail_outline_outlined,
                                  hintText: client
                                      .supabaseClient.auth.currentUser!.email!,
                                  onChanged: (value) => context
                                      .read<AccountBloc>()
                                      .add(EmailChanged(value)),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: kMediumGap3,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: TextButton(
                                      onPressed: () {
                                        if (state.name.isNotEmpty ||
                                            state.email.isNotEmpty) {
                                          context
                                              .read<AccountBloc>()
                                              .add(const SaveUserData());
                                        } else {
                                          context.read<AccountBloc>().add(
                                              const ValidateAccountNameField(
                                                  true));
                                        }
                                      },
                                      child: Text(
                                        AppLocalizations.of(context)!.saveBtn,
                                        style: generalBtnStyles.btnTextStyle,
                                      )),
                                ),
                              ],
                            ),
                            const Spacer(),
                            BottomText(
                              onTap: () => _resetPassword(context),
                              normalText:
                                  AppLocalizations.of(context)!.changeYour,
                              boldText:
                                  AppLocalizations.of(context)!.changeYourBold,
                            ),
                            const SizedBox(
                              height: kSmallGap,
                            )
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _resetPassword(BuildContext context) async {
    await ShowPlatformAlertDialog.showPlatformAlertDialogWithCallbacks(
        showInputTextField: true,
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
  Widget wrappedRoute(BuildContext context) {
    return AccountBlocProvider(child: this);
  }
}
