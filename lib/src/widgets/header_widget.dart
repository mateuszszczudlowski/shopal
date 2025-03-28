// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class HeaderText extends StatelessWidget {
  final String headerText;
  const HeaderText({super.key, required this.headerText});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        headerText,
        style: Theme.of(context)
            .textTheme
            .displayLarge!
            .copyWith(color: Theme.of(context).colorScheme.secondary),
      ),
    );
  }
}
