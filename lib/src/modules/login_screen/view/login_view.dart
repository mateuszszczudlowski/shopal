import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:template/src/config/routes.dart';
import 'package:template/src/config/theme/contants.dart';
import 'package:template/src/config/theme/general_btn_styles.dart';
import 'package:template/src/services/authentication/bloc/authentication_bloc.dart';
import 'package:template/src/utils/alert_dialog/show_platform_alert_dialog.dart';
import 'package:template/src/utils/loading_status.dart';
import 'package:template/src/widgets/bottom_text.dart';
import 'package:template/src/widgets/default_input.dart';
import 'package:template/src/widgets/header_widget.dart';
import 'package:template/src/widgets/login_with_social_media.dart';

@RoutePage()
class LoginView extends StatelessWidget {
  const LoginView({super.key});

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
  Widget build(BuildContext context) {
    final GeneralBtnStyles generalBtnStyles = Theme.of(context).extension()!;
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      height: kLargeGap4,
                    ),
                    // IconButton(
                    //   onPressed: () => context.router.back(),
                    //   splashRadius: kCustomSmall2,
                    //   icon: Icon(Icons.arrow_back_ios_outlined,
                    //       size: kIconSizeMedium2,
                    //       color: Theme.of(context).colorScheme.secondary),
                    // ),
                    const SizedBox(
                      height: kCustomSmall4,
                    ),
                    HeaderText(
                      headerText: AppLocalizations.of(context)!.loginHeader,
                    ),
                    Column(
                      children: [
                        Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                AppLocalizations.of(context)!.loginTextField3,
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
                            BlocBuilder<AuthenticationBloc,
                                AuthenticationState>(
                              builder: (context, state) {
                                return DefaultInput(
                                  buildContext: context,
                                  errorText: state.loadingStatus is FailedStatus
                                      ? 'Invalid login credentials'
                                      : null,
                                  prefixIcon: Icons.mail_outline_outlined,
                                  hintText: AppLocalizations.of(context)!
                                      .hintTextField1,
                                  onChanged: (value) => context
                                      .read<AuthenticationBloc>()
                                      .add(EmailChangedAuthentication(value)),
                                );
                              },
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: kCustomSmall3,
                        ),
                        Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                AppLocalizations.of(context)!.loginTextField2,
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
                            BlocBuilder<AuthenticationBloc,
                                AuthenticationState>(
                              builder: (context, state) {
                                return DefaultInput(
                                  buildContext: context,
                                  errorText: state.loadingStatus is FailedStatus
                                      ? 'Invalid login credentials'
                                      : null,
                                  prefixIcon: Icons.lock_outline_rounded,
                                  hintText: AppLocalizations.of(context)!
                                      .hintTextField2,
                                  obscureText: !state.showPassword,
                                  suffixIcon: !state.showPassword
                                      ? Icons.visibility_off_outlined
                                      : Icons.visibility_outlined,
                                  onSuffixTap: () => context
                                      .read<AuthenticationBloc>()
                                      .add(
                                          const TurnPasswordVisibilityAuthentication()),
                                  onChanged: (value) => context
                                      .read<AuthenticationBloc>()
                                      .add(
                                          PasswordChangedAuthentication(value)),
                                );
                              },
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: kCustomSmall5,
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                            onTap: () => _resetPassword(context),
                            child: Text(
                              AppLocalizations.of(context)!.lostPassword,
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineSmall!
                                  .copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .surfaceDim),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextButton(
                              onPressed: () async {
                                context
                                    .read<AuthenticationBloc>()
                                    .add(const LoginUser());
                              },
                              child: Text(
                                AppLocalizations.of(context)!.loginBtn,
                                style: generalBtnStyles.btnTextStyle,
                              )),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            AppLocalizations.of(context)!
                                .alternativeLoginMethod,
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .surfaceDim),
                          ),
                        ),
                        const SizedBox(
                          height: kSmallGap3,
                        ),
                        const LoginWithSocialMedia(),
                        const SizedBox(
                          height: kLargeGap2,
                        ),
                        BottomText(
                          onTap: () =>
                              context.router.push(const RegisterRoute()),
                          normalText:
                              AppLocalizations.of(context)!.loginScreenBottom,
                          boldText: AppLocalizations.of(context)!
                              .loginScreenBottomDark,
                        ),
                        const SizedBox(
                          height: kSmallGap,
                        )
                      ],
                    ),
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
