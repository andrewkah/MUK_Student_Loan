import 'package:flutter/material.dart';

class RowTextFields extends StatelessWidget {

  final String titleText;
  final String subTitleText;
  final Color textColor;
  final double? textSize;
  const RowTextFields({super.key, required this.titleText, required this.subTitleText, required this.textColor, this.textSize});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(titleText,
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: textSize,
          ),
          textAlign: TextAlign.center,
        ),
        Text(subTitleText,
          style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.w500,
              fontSize: textSize,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
