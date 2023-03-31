// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class SettingsHeader extends StatelessWidget {
  final String headerText;
  const SettingsHeader({
    super.key,
    required this.headerText,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      headerText,
      style: Theme.of(context).textTheme.titleLarge!.copyWith(
          color: Theme.of(context).colorScheme.secondary, fontSize: 18),
    );
  }
}
