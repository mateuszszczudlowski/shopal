import 'package:flutter/material.dart';
import 'package:template/src/config/theme/general_btn_styles.dart';

class OutlinePrimaryBtn extends StatelessWidget {
  final String btnText;
  final Color color;
  final VoidCallback callback;
  const OutlinePrimaryBtn(
      {super.key,
      required this.btnText,
      required this.color,
      required this.callback});

  @override
  Widget build(BuildContext context) {
    final GeneralBtnStyles generalBtnStyles = Theme.of(context).extension()!;
    return Expanded(
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          foregroundColor: color,
          side: BorderSide(width: 1.0, color: color),
        ),
        onPressed: callback,
        child: Text(
          btnText,
          style: generalBtnStyles.btnTextStyle!.copyWith(color: color),
        ),
      ),
    );
  }
}
