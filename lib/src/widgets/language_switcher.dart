import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:template/src/config/theme/contants.dart';
import 'package:template/src/theme/cubit/theme_cubit.dart';

class LanguageSwitcher extends StatelessWidget {
  final String language;
  final bool? selected;
  const LanguageSwitcher(
      {super.key, required this.language, required this.selected});

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
            value: selected ?? false,
            onChanged: (value) {
              // BlocProvider.of<ThemeCubit>(context).toggleTheme(value: value);
            },
            title: Text(
              language,
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
