import 'package:flutter/material.dart';

class RowTextFields extends StatelessWidget {
  final String titleText;
  final String subTitleText;
  final Color? textColor;
  final Color? titleColor;
  final double? textSize;
  const RowTextFields(
      {super.key,
      required this.titleText,
      required this.subTitleText,
      this.textColor,
      this.textSize, this.titleColor});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          titleText,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: textSize,
            color: titleColor,
          ),
          textAlign: TextAlign.start,
        ),
        Text(
          subTitleText,
          style: TextStyle(
            color: textColor,
            fontWeight: FontWeight.w500,
            fontSize: textSize,
          ),
        ),
      ],
    );
  }
}
