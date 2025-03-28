import 'package:flutter/material.dart';
import 'package:template/src/config/theme/contants.dart';

class WorkerItem extends StatelessWidget {
  final String workerName;
  const WorkerItem({super.key, required this.workerName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: kCustomMediumGap,
            height: kCustomMediumGap,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surfaceBright,
              borderRadius: kDefaultBorderRadius,
            ),
            child: Icon(Icons.person,
                size: kIconSizeMedium5,
                color: Theme.of(context).colorScheme.secondary),
          ),
          const SizedBox(height: 6),
          SizedBox(
            width: 90,
            child: Center(
              child: Text(
                workerName,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      color: Theme.of(context).colorScheme.secondaryContainer,
                      fontWeight: FontWeight.w400,
                      height: 1.6,
                      fontSize: 15,
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
