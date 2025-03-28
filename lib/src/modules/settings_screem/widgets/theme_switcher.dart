import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:template/src/config/theme/contants.dart';
import 'package:template/src/theme/cubit/theme_cubit.dart';

class ThemeSwitcher extends StatelessWidget {
  const ThemeSwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: kCustomMediumGap,
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return SwitchListTile(
            inactiveTrackColor: Theme.of(context).colorScheme.primaryContainer,
            activeColor: Theme.of(context).colorScheme.primary,
            contentPadding:
                const EdgeInsets.only(left: 5, right: 0, top: 0, bottom: 0),
            value: state.isLightTheme ?? false,
            onChanged: (value) {
              BlocProvider.of<ThemeCubit>(context).toggleTheme(value: value);
            },
            secondary: Container(
              width: kMediumGap3,
              height: kMediumGap3,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surfaceBright,
                borderRadius: kDefaultBorderRadius,
              ),
              child: Icon(Icons.nightlight_round_sharp,
                  size: kIconSizeMedium5,
                  color: Theme.of(context).colorScheme.secondary),
            ),
            title: Text(
              AppLocalizations.of(context)!.darkMode,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(color: Theme.of(context).colorScheme.secondary),
            ),
          );
        },
      ),
    );
  }
}
