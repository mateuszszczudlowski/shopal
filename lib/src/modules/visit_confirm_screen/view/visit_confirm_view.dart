import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rive/rive.dart';
import 'package:template/src/config/routes.dart';
import 'package:template/src/config/theme/contants.dart';
import 'package:template/src/config/theme/general_btn_styles.dart';
// import 'package:template/src/theme/cubit/theme_cubit.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

@RoutePage()
class VisitConfirmView extends StatefulWidget {
  const VisitConfirmView({super.key});

  @override
  State<VisitConfirmView> createState() => _VisitConfirmViewState();
}

class _VisitConfirmViewState extends State<VisitConfirmView> {
  late RiveAnimation riveDark;
  late RiveAnimation riveLight;
  @override
  void initState() {
    riveDark = const RiveAnimation.asset(
      'assets/animations/calendar_visit_dark.riv',
      fit: BoxFit.contain,
      alignment: Alignment.center,
    );
    riveLight = const RiveAnimation.asset(
      'assets/animations/calendar_visit_light.riv',
      fit: BoxFit.contain,
      alignment: Alignment.center,
    );

    super.initState();
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
              constraints: BoxConstraints(
                  minHeight: constraints.maxHeight,
                  maxWidth: constraints.maxWidth),
              child: IntrinsicHeight(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Spacer(),
                    Column(
                      children: [
                        // BlocBuilder<ThemeCubit, ThemeState>(
                        //   builder: (context, state) {
                        //     return SizedBox(
                        //         width: 260,
                        //         height: 200,
                        //         child: Center(
                        //             child: (state.isLightTheme!)
                        //                 ? riveDark
                        //                 : riveLight));
                        //   },
                        // ),
                        SizedBox(
                          width: 320,
                          child: Text(
                            AppLocalizations.of(context)!
                                .visitsConfirmMessageTop,
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(
                                    fontSize: 22,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .secondaryContainer,
                                    fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    SizedBox(
                      width: 320,
                      child: Text(
                        AppLocalizations.of(context)!
                            .visitsConfirmMessageBottom,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            color:
                                Theme.of(context).colorScheme.primaryContainer,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: TextButton(
                              onPressed: () {
                                // TODO add booking mechanism
                                context.router.push(const MainRoute());
                              },
                              child: Text(
                                AppLocalizations.of(context)!.ok,
                                style: generalBtnStyles.btnTextStyle,
                              )),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
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
