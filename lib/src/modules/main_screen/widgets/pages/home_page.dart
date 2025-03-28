import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:template/src/config/routes.dart';
import 'package:template/src/config/theme/contants.dart';
import 'package:template/src/modules/main_screen/widgets/list_header.dart';
import 'package:template/src/modules/main_screen/widgets/search_button.dart';
import 'package:template/src/modules/main_screen/widgets/specialist_list.dart';
import 'package:template/src/modules/main_screen/widgets/specialist_services_list.dart';
import 'package:template/src/modules/main_screen/widgets/upcoming_visit.dart';
import 'package:template/src/repositories/supabase_repository/api/supabase_api.dart';
import 'package:template/src/repositories/supabase_repository/supabase_repository.dart';
import 'package:template/src/services/authentication/bloc/authentication_bloc.dart';
import 'package:template/src/utils/alert_dialog/show_platform_alert_dialog.dart';
import 'package:template/src/widgets/app_logo_small.dart';

@RoutePage()
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    client.supabaseClient
        .from('profile')
        .stream(primaryKey: ['id']).listen((List<Map<String, dynamic>> data) {
      final Map<String, dynamic> str = data[0];
      BlocProvider.of<AuthenticationBloc>(context).add(ShareUserData(str));
    });

    super.initState();
  }

  Future<void> _logoutConfirmation(BuildContext context) async {
    await ShowPlatformAlertDialog.showPlatformAlertDialogWithCallbacks(
      showInputTextField: false,
      context: context,
      onNoTap: () {
        context.router.pop();
      },
      onYesTap: () {
        context.read<AuthenticationBloc>().add(const LogoutUser());
        context
            .read<AuthenticationBloc>()
            .add(const EmailChangedAuthentication(''));

        context
            .read<AuthenticationBloc>()
            .add(const PasswordChangedAuthentication(''));
      },
      alertHeader: '',
      alertSubheader: AppLocalizations.of(context)!.signOutMessage,
    );
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<dynamic>(
        stream: context.read<ISupabaseRepository>().getProfile(),
        builder: (context, snapshot) {
          if (!snapshot.hasData &&
              snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          return GestureDetector(
            onTap: () {
              FocusScope.of(context).requestFocus(FocusNode());
            },
            child: LayoutBuilder(
              builder: (context, constraints) => SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraints.maxHeight),
                  child: Padding(
                    padding: kHorizontalPadding,
                    child: IntrinsicHeight(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: kCustomSmall10,
                          ),
                          IconButton(
                            onPressed: () {
                              _logoutConfirmation(context);
                            },
                            splashRadius: kSplashSizeMedium,
                            icon: Icon(Icons.arrow_back_ios_outlined,
                                size: kIconSizeMedium2,
                                color: Theme.of(context).colorScheme.secondary),
                          ),
                          const SizedBox(
                            height: kCustomSmall3,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const AppLogoSmall(),
                              GestureDetector(
                                onTap: () {
                                  context.router.push(SettingsRoute(
                                      user: BlocProvider.of<AuthenticationBloc>(
                                              context)
                                          .state
                                          .userProfile));
                                },
                                child: Row(
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          AppLocalizations.of(context)!
                                              .yourAccountHeader,
                                          style: Theme.of(context)
                                              .textTheme
                                              .headlineSmall!
                                              .copyWith(
                                                  height: kSmallBorder,
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .primaryContainer),
                                        ),
                                        const SizedBox(height: kSmallGap5),
                                        BlocBuilder<AuthenticationBloc,
                                            AuthenticationState>(
                                          builder: (context, state) {
                                            return Text(
                                              (state.userProfile != null)
                                                  ? state.userProfile!.userName!
                                                      .toUpperCase()
                                                  : '',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headlineMedium!
                                                  .copyWith(
                                                      height: kSmallBorder,
                                                      color: Theme.of(context)
                                                          .colorScheme
                                                          .secondary),
                                            );
                                          },
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      width: kSmallGap4,
                                    ),
                                    Container(
                                      width: kMediumGap3,
                                      height: kMediumGap3,
                                      decoration: BoxDecoration(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .surfaceBright,
                                        borderRadius: kDefaultBorderRadius,
                                      ),
                                      child: Icon(Icons.person,
                                          size: kIconSizeMedium5,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .secondary),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: kMediumGap2,
                          ),
                          const UpcomingVisit(),
                          const SearchButton(),
                          const SizedBox(
                            height: kMediumGap2,
                          ),
                          ListHeader(
                            fontSize: 19,
                            headerText:
                                AppLocalizations.of(context)!.promotionsHeader,
                          ),
                          const SpecialistList(),
                          const SizedBox(
                            height: kCustomSmall2,
                          ),
                          ListHeader(
                            fontSize: 19,
                            headerText: AppLocalizations.of(context)!
                                .specialistServices,
                          ),
                          const SizedBox(
                            height: kSmallGap4,
                          ),
                          const SpecialistServicesList(),
                          ListHeader(
                            fontSize: 19,
                            headerText:
                                AppLocalizations.of(context)!.recommendedHeader,
                          ),
                          const SpecialistList(),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        });
  }
}
