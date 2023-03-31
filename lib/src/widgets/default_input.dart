import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:template/src/config/theme/contants.dart';

part './switchable_input_icon.dart';

/// Use [prefixWidget] and [suffixWidget] if you want to provide custom widget
/// istead of icons. [suffixIcon], [prefixIcon] can be used with [onSuffixTap] and
/// [onPrefixTap]. if [prefixWidget] is provided, then [suffixIcon] and [onPrefixTap]
/// will not work, the same thing for [suffixIcon] and [onSuffixTap]
///
/// In order to apply regex, use [inputFormatters]. Other fields are similar to
/// default [TextField]
class DefaultInput extends StatelessWidget {
  final String? helperText;
  final String? errorText;
  final String? labelText;
  final String? hintText;
  final TextEditingController? controller;
  final IconData? prefixIcon;
  final Function()? onPrefixTap;
  final IconData? suffixIcon;
  final Function()? onSuffixTap;
  final void Function(String)? onChanged;
  final bool isDisabled;
  final bool obscureText;
  final Widget? prefixWidget;
  final Widget? suffixWidget;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final TextStyle? helperStyle;
  final BorderRadius borderRadius;
  final int? helperMaxLines;
  final Function()? onTap;
  final TextCapitalization? textCapitalization;
  final BuildContext? buildContext;

  const DefaultInput({
    super.key,
    this.helperText,
    this.errorText,
    this.labelText,
    this.hintText,
    this.onChanged,
    this.controller,
    this.prefixIcon,
    this.onPrefixTap,
    this.suffixIcon,
    this.onSuffixTap,
    this.isDisabled = false,
    this.obscureText = false,
    this.prefixWidget,
    this.suffixWidget,
    this.keyboardType,
    this.inputFormatters,
    this.buildContext,
    this.helperStyle,
    this.borderRadius = const BorderRadius.all(Radius.circular(12)),
    this.helperMaxLines,
    this.onTap,
    this.textCapitalization,
  });

  Widget? get _prefix {
    if (prefixWidget != null) {
      return prefixWidget;
    } else if (prefixIcon != null) {
      return _SwitchabaleInputIcon(
        onPressed: onPrefixTap,
        icon: Icon(
          prefixIcon,
          key: ValueKey(prefixIcon),
          color: Theme.of(buildContext!).colorScheme.onSurface,
          size: kIconSizeMedium2,
          // color: isDisabled ? BaytukiColors.black100 : BaytukiColors.black,
        ),
      );
    }
    return null;
  }

  Widget? get _suffix {
    if (suffixWidget != null) {
      return suffixWidget;
    } else if (suffixIcon != null) {
      return _SwitchabaleInputIcon(
        onPressed: onSuffixTap,
        icon: Icon(
          suffixIcon,
          key: ValueKey(suffixIcon),
          size: kIconSizeMedium,
          color: Theme.of(buildContext!).colorScheme.surface,
          // color: isDisabled ? BaytukiColors.black100 : BaytukiColors.black,
        ),
      );
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          onTap: onTap,
          keyboardType: keyboardType,
          obscureText: obscureText,
          controller: controller,
          textCapitalization: textCapitalization ?? TextCapitalization.none,
          onChanged: onChanged,
          inputFormatters: inputFormatters,
          readOnly: onTap != null,
          decoration: InputDecoration(
              helperText: helperText,
              helperMaxLines: helperMaxLines,
              hintText: hintText,
              errorText: errorText,
              errorMaxLines: helperMaxLines,
              enabled: !isDisabled,
              prefixIcon: _prefix,
              suffixIcon: _suffix),
        ),
      ],
    );
  }
}
