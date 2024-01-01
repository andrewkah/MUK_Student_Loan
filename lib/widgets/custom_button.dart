import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final double? titleSize;
  final double paddingHorizontal;
  final double paddingVertical;
  final double borderRadius;
  final VoidCallback? onPressed;
  const CustomButton(
      {super.key,
      required this.title,
      required this.paddingHorizontal,
      required this.paddingVertical,
      required this.borderRadius,
      this.titleSize,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        title,
        style: TextStyle(color: Colors.white, fontSize: titleSize, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(
            vertical: paddingVertical, horizontal: paddingHorizontal),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 147, 71),
      ),
    );
    //   Material(
    //   elevation: elevation,
    //   borderRadius: BorderRadius.circular(borderRadius),
    //   color: Colors.primaryGreen,
    //   child: MaterialButton(
    //     padding: EdgeInsets.symmetric(
    //         vertical: paddingVertical, horizontal: paddingHorizontal),
    //     onPressed: () {},
    //     child: Text(
    //       title,
    //       textAlign: TextAlign.center,
    //       style: TextStyle(
    //           color: Colors.white,
    //           fontSize: titleSize,
    //           fontWeight: FontWeight.bold),
    //     ),
    //   ),
    // );
  }
}
