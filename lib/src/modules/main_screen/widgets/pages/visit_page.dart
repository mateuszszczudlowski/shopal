import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:template/src/config/theme/contants.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:template/src/theme/cubit/theme_cubit.dart';
import 'package:template/src/widgets/header_widget.dart';
import 'package:rive/rive.dart';

class VisitPage extends StatelessWidget {
  const VisitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kHorizontalPadding,
      child: Container(
          color: Theme.of(context).scaffoldBackgroundColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: kCustomSmall10,
              ),
              IconButton(
                onPressed: () => context.router.navigateBack(),
                splashRadius: kSplashSizeMedium,
                icon: Icon(Icons.arrow_back_ios_outlined,
                    size: kIconSizeMedium2,
                    color: Theme.of(context).colorScheme.secondary),
              ),
              const SizedBox(
                height: kCustomSmall3,
              ),
              HeaderText(
                headerText: AppLocalizations.of(context)!.visitsHeader,
              ),
              const SizedBox(
                height: 100,
              ),
              BlocBuilder<ThemeCubit, ThemeState>(
                builder: (context, state) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(
                            height: kIconSizeMedium5,
                          ),
                          SizedBox(
                            width: 260,
                            height: 200,
                            child: Center(
                                child: (state.isLightTheme!)
                                    ? const RiveAnimation.asset(
                                        'assets/animations/calendar_visit_dark.riv')
                                    : const RiveAnimation.asset(
                                        'assets/animations/calendar_visit_light.riv')),
                          ),
                          Text(
                            AppLocalizations.of(context)!.plannedVisitsEmpty,
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .primaryContainer,
                                    fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ],
                  );
                },
              ),
              const Spacer(),
            ],
          )),
    );
  }
}
