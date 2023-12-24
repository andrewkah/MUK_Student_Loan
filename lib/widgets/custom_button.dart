import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {

  final String title;
  final double? titleSize;
  final double paddingHorizontal;
  final double paddingVertical;
  final double elevation;
  final double borderRadius;
  const CustomButton({super.key, required this.title, required this.paddingHorizontal, required this.paddingVertical, required this.borderRadius, required this.elevation, this.titleSize});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: elevation,
      borderRadius: BorderRadius.circular(borderRadius),
      color: Colors.primaryGreen,
      child: MaterialButton(
        padding: EdgeInsets.symmetric(vertical: paddingVertical, horizontal: paddingHorizontal),
        onPressed: () {

        },
        child: Text(title, textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: titleSize, fontWeight: FontWeight.bold),),
      ),
    );
  }
}
