import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:template/src/config/routes.dart';
import 'package:template/src/config/theme/contants.dart';
import 'package:template/src/config/theme/general_btn_styles.dart';
import 'package:template/src/modules/register_screen/bloc/register_bloc.dart';
import 'package:template/src/modules/register_screen/bloc/register_bloc_provider.dart';
import 'package:template/src/utils/loading_status.dart';
import 'package:template/src/widgets/bottom_text.dart';
import 'package:template/src/widgets/default_input.dart';
import 'package:template/src/widgets/header_widget.dart';
import 'package:template/src/widgets/login_with_social_media.dart';

class RegisterView extends StatelessWidget with AutoRouteWrapper {
  const RegisterView({super.key});

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
                child: BlocBuilder<RegisterBloc, RegisterState>(
                  builder: (context, state) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(
                          height: kCustomSmall1,
                        ),
                        IconButton(
                          onPressed: () => context.router.navigateBack(),
                          splashRadius: kCustomSmall2,
                          icon: Icon(Icons.arrow_back_ios_outlined,
                              size: kSmallGap,
                              color: Theme.of(context).colorScheme.secondary),
                        ),
                        const SizedBox(
                          height: kCustomSmall3,
                        ),
                        HeaderText(
                          headerText:
                              AppLocalizations.of(context)!.registerHeader,
                        ),
                        Column(
                          children: [
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
                                BlocBuilder<RegisterBloc, RegisterState>(
                                  builder: (context, state) {
                                    return DefaultInput(
                                        keyboardType: TextInputType.name,
                                        buildContext: context,
                                        errorText: state.showNameError
                                            ? 'Sign up requires a name'
                                            : null,
                                        prefixIcon: Icons.person_outline,
                                        hintText: AppLocalizations.of(context)!
                                            .hintTextField3,
                                        onChanged: (value) {
                                          context
                                              .read<RegisterBloc>()
                                              .add(NameChanged(value));
                                        });
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
                                BlocBuilder<RegisterBloc, RegisterState>(
                                  builder: (context, state) {
                                    return DefaultInput(
                                      keyboardType: TextInputType.emailAddress,
                                      buildContext: context,
                                      errorText:
                                          state.loadingStatus is FailedStatus
                                              ? 'Must be a valid email adress'
                                              : null,
                                      prefixIcon: Icons.mail_outline_outlined,
                                      hintText: AppLocalizations.of(context)!
                                          .hintTextField1,
                                      onChanged: (value) => context
                                          .read<RegisterBloc>()
                                          .add(EmailChanged(value)),
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
                                    AppLocalizations.of(context)!
                                        .loginTextField2,
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
                                BlocBuilder<RegisterBloc, RegisterState>(
                                  builder: (context, state) {
                                    return DefaultInput(
                                      buildContext: context,
                                      errorText: state.loadingStatus
                                              is FailedStatus
                                          ? 'Sign up requires a valid password'
                                          : null,
                                      prefixIcon: Icons.lock_outline_rounded,
                                      hintText: AppLocalizations.of(context)!
                                          .hintTextField2,
                                      obscureText: !state.showPassword,
                                      suffixIcon: !state.showPassword
                                          ? Icons.visibility_off_outlined
                                          : Icons.visibility_outlined,
                                      onSuffixTap: () => context
                                          .read<RegisterBloc>()
                                          .add(const TurnPasswordVisibility()),
                                      onChanged: (value) => context
                                          .read<RegisterBloc>()
                                          .add(PasswordChanged(value)),
                                    );
                                  },
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: kCustomSmall10,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: TextButton(
                                  onPressed: () {
                                    context
                                        .read<RegisterBloc>()
                                        .add(const RegisterUser());
                                    context
                                        .read<RegisterBloc>()
                                        .add(const ShowNameError());
                                  },
                                  child: Text(
                                    AppLocalizations.of(context)!.registerBtn,
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
                                            .background),
                              ),
                            ),
                            const SizedBox(
                              height: kCustomSmall6,
                            ),
                            const LoginWithSocialMedia(),
                            const SizedBox(
                              height: kLargeGap2,
                            ),
                            BottomText(
                              onTap: () =>
                                  context.router.push(const LoginViewRoute()),
                              normalText: AppLocalizations.of(context)!
                                  .registerScreenBottom,
                              boldText: AppLocalizations.of(context)!.loginBtn,
                            ),
                            const SizedBox(
                              height: kSmallGap,
                            )
                          ],
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return RegisterBlocProvider(child: this);
  }
}
