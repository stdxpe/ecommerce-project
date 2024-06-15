import 'package:flutter/material.dart';

class ButtonCloseIcon extends StatelessWidget {
  final Function onPressed;
  final double? buttonSize;
  final double? iconSize;
  final Color? buttonColor;
  final Color? iconColor;

  const ButtonCloseIcon({
    required this.onPressed,
    this.buttonSize = 20,
    this.iconSize = 11,
    this.buttonColor = Colors.white70,
    this.iconColor = Colors.black87,
    super.key,
  });

  // final double buttonSize;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPressed();
      },
      child: Container(
        height: buttonSize,
        width: buttonSize,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: buttonColor,
        ),
        child: Center(
          child: Icon(
            Icons.close_sharp,
            color: iconColor,
            size: iconSize,
          ),
        ),
      ),
    );
  }
}
