import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavDestination extends StatelessWidget {
  final String selectedIcon;
  final double selectedIconSize;
  final String baseIcon;
  final double baseIconSize;
  final String navLabel;

  const BottomNavDestination(
      {super.key,
      required this.selectedIcon,
      required this.selectedIconSize,
      required this.baseIcon,
      required this.baseIconSize,
      required this.navLabel});

  @override
  Widget build(BuildContext context) {
    return NavigationDestination(
      tooltip: '',
      selectedIcon: SvgPicture.asset(
        selectedIcon,
        width: selectedIconSize,
      ),
      icon: SvgPicture.asset(
        baseIcon,
        width: baseIconSize,
      ),
      label: navLabel,
    );
  }
}
