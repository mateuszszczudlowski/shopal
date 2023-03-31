import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:template/src/config/routes.dart';
import 'package:template/src/config/theme/app_images.dart';
import 'package:template/src/config/theme/contants.dart';
import 'package:template/src/modules/main_screen/widgets/list_header.dart';
import 'package:template/src/modules/main_screen/widgets/specialist_list.dart';
import 'package:template/src/modules/main_screen/widgets/specialist_services_list.dart';
import 'package:template/src/modules/main_screen/widgets/upcoming_visit.dart';
import 'package:template/src/repositories/supabase_repository/api/supabase_api.dart';
import 'package:template/src/repositories/supabase_repository/supabase_repository.dart';
import 'package:template/src/services/authentication/bloc/authentication_bloc.dart';
import 'package:template/src/theme/cubit/theme_cubit.dart';
import 'package:template/src/widgets/app_logo_small.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
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
            child: Padding(
              padding: kHorizontalPadding,
              child: LayoutBuilder(
                builder: (context, constraints) => SingleChildScrollView(
                  child: ConstrainedBox(
                    constraints:
                        BoxConstraints(minHeight: constraints.maxHeight),
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
                              context
                                  .read<AuthenticationBloc>()
                                  .add(const LogoutUser());
                              context
                                  .read<AuthenticationBloc>()
                                  .add(const EmailChangedAuthentication(''));

                              context
                                  .read<AuthenticationBloc>()
                                  .add(const PasswordChangedAuthentication(''));
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
                                  context.router.push(SettingsViewRoute(
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
                                            .onBackground,
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
                          BlocBuilder<ThemeCubit, ThemeState>(
                            builder: (context, state) {
                              return TextField(
                                decoration: InputDecoration(
                                    prefixIcon: Padding(
                                      padding:
                                          const EdgeInsets.all(kCustomSmall9),
                                      child: SvgPicture.asset(
                                        (state.isLightTheme!)
                                            ? AppImages.searchIconDark
                                            : AppImages.searchIconLight,
                                      ),
                                    ),
                                    hintText: AppLocalizations.of(context)!
                                        .hintSearch,
                                    labelStyle: Theme.of(context)
                                        .inputDecorationTheme
                                        .labelStyle),
                              );
                            },
                          ),
                          const SizedBox(
                            height: kMediumGap3,
                          ),
                          ListHeader(
                            headerText:
                                AppLocalizations.of(context)!.promotionsHeader,
                          ),
                          const SpecialistList(),
                          const SizedBox(
                            height: kCustomSmall2,
                          ),
                          ListHeader(
                            headerText: AppLocalizations.of(context)!
                                .specialistServices,
                          ),
                          const SizedBox(
                            height: kSmallGap4,
                          ),
                          const SpecialistServicesList(),
                          ListHeader(
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
