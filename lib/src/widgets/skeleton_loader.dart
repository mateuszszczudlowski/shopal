import 'package:flutter/material.dart';
import 'package:template/src/config/theme/contants.dart';

class SkeletonLoader extends StatefulWidget {
  const SkeletonLoader({super.key});

  @override
  State<SkeletonLoader> createState() => _SkeletonLoaderState();
}

class _SkeletonLoaderState extends State<SkeletonLoader>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  late Animation gradientPosition;

  late List<Color> gradientColors;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        duration: const Duration(milliseconds: 1500), vsync: this);

    gradientPosition = Tween<double>(
      begin: -3,
      end: 10,
    ).animate(
      CurvedAnimation(parent: _controller, curve: Curves.linear),
    )..addListener(() {
        setState(() {});
      });

    _controller.repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surfaceBright,
            borderRadius: kDefaultBorderRadius,
            gradient: LinearGradient(
              begin: Alignment(gradientPosition.value, 0),
              end: const Alignment(-1, 0),
              colors: [
                Theme.of(context).colorScheme.surfaceBright,
                Theme.of(context)
                    .colorScheme
                    .surfaceBright
                    .withValues(alpha: .9),
                Theme.of(context)
                    .colorScheme
                    .surfaceBright
                    .withValues(alpha: .6)
              ],
            ),
          ),
          width: kListViewHeightMobile - 20,
          height: 120,
        ),
        const SizedBox(
          height: 12,
        ),
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surfaceBright,
            borderRadius: kDefaultBorderRadius,
            gradient: LinearGradient(
              begin: Alignment(gradientPosition.value, 0),
              end: const Alignment(-1, 0),
              colors: [
                Theme.of(context).colorScheme.surfaceBright,
                Theme.of(context)
                    .colorScheme
                    .surfaceBright
                    .withValues(alpha: .9),
                Theme.of(context)
                    .colorScheme
                    .surfaceBright
                    .withValues(alpha: .8)
              ],
            ),
          ),
          width: kListViewHeightMobile - 20,
          height: 34,
        ),
        const SizedBox(
          height: 12,
        ),
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surfaceBright,
            borderRadius: kDefaultBorderRadius,
            gradient: LinearGradient(
              begin: Alignment(gradientPosition.value, 0),
              end: const Alignment(-1, 0),
              colors: [
                Theme.of(context).colorScheme.surfaceBright,
                Theme.of(context)
                    .colorScheme
                    .surfaceBright
                    .withValues(alpha: .9),
                Theme.of(context)
                    .colorScheme
                    .surfaceBright
                    .withValues(alpha: .8)
              ],
            ),
          ),
          width: kListViewHeightMobile - 20,
          height: 18,
        ),
        const SizedBox(
          height: 12,
        ),
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surfaceBright,
            borderRadius: kDefaultBorderRadius,
            gradient: LinearGradient(
              begin: Alignment(gradientPosition.value, 0),
              end: const Alignment(-1, 0),
              colors: [
                Theme.of(context).colorScheme.surfaceBright,
                Theme.of(context)
                    .colorScheme
                    .surfaceBright
                    .withValues(alpha: .8),
                Theme.of(context)
                    .colorScheme
                    .surfaceBright
                    .withValues(alpha: .8)
              ],
            ),
          ),
          width: kListViewHeightMobile - 20,
          height: 18,
        ),
        const SizedBox(
          height: 14,
        ),
      ],
    );
  }
}
