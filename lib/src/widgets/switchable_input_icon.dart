part of './default_input.dart';

class _SwitchabaleInputIcon extends StatelessWidget {
  final Widget icon;
  final Function()? onPressed;

  const _SwitchabaleInputIcon({required this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      transitionBuilder: (child, animation) => ScaleTransition(
        scale: animation,
        child: child,
      ),
      child: Container(
        key: icon.key,
        child: onPressed == null
            ? icon
            : IconButton(
                onPressed: onPressed,
                icon: icon,
                splashRadius: 20,
              ),
      ),
    );
  }
}
