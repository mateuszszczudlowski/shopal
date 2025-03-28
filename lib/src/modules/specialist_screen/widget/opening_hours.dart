import 'package:flutter/material.dart';
import 'package:template/src/config/theme/contants.dart';

class OpeningHoursWidget extends StatelessWidget {
  final String dayName;
  final String? workHours;
  const OpeningHoursWidget(
      {super.key, required this.dayName, required this.workHours});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: kIconSizeMedium2),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(dayName,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: Theme.of(context).colorScheme.secondaryContainer,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  height: 1)),
          (workHours != null)
              ? Text(workHours!,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Theme.of(context).colorScheme.secondary,
                      fontSize: 16,
                      height: 1))
              : Text('ZAMKNIĘTE',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Theme.of(context).colorScheme.secondary,
                      fontSize: 16,
                      height: 1)),
        ],
      ),
    );
  }
}
