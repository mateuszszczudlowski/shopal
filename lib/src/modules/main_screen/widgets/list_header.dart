// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ListHeader extends StatelessWidget {
  final String headerText;
  final double fontSize;
  const ListHeader({
    super.key,
    required this.headerText,
    required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      headerText,
      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
          color: Theme.of(context).colorScheme.secondary, fontSize: fontSize),
    );
  }
}
