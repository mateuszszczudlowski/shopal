// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:chips_choice/chips_choice.dart';
import 'package:flutter/material.dart';

class EventChip extends StatefulWidget {
  final List<String>? openingHours;
  const EventChip({
    super.key,
    required this.openingHours,
  });

  @override
  State<EventChip> createState() => _EventChipState();
}

class _EventChipState extends State<EventChip> {
  int tag = 0;

  @override
  Widget build(BuildContext context) {
    return widget.openingHours != null
        ? ChipsChoice<int>.single(
            choiceStyle: C2ChipStyle.outlined(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              height: 40,
              borderStyle: BorderStyle.solid,
              borderWidth: 1,
              borderRadius: const BorderRadius.all(
                Radius.circular(25),
              ),
              foregroundStyle:
                  const TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              color: Theme.of(context).colorScheme.secondary,
              selectedStyle: C2ChipStyle.filled(
                foregroundStyle: const TextStyle(
                    fontSize: 15, height: 1, fontWeight: FontWeight.w400),
                foregroundColor: Theme.of(context).scaffoldBackgroundColor,
                color: Theme.of(context).colorScheme.primary,
                backgroundOpacity: 1,
                overlayColor: Colors.transparent,
                borderRadius: const BorderRadius.all(
                  Radius.circular(25),
                ),
              ),
            ),
            value: tag,
            onChanged: (val) => setState(() => tag = val),
            choiceItems: C2Choice.listFrom<int, String>(
              source: widget.openingHours!,
              value: (i, v) => i,
              label: (i, v) => v,
            ),
          )
        : SizedBox(
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Brak wolnych terminów w tym dniu',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.primaryContainer,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          );
  }
}
