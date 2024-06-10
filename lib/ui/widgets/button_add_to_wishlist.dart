import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonAddToWishlist extends StatelessWidget {
  final Function onPressed;
  final double? buttonSize;
  final double? iconSize;
  final Color? buttonColor;
  final Color? iconColor;

  const ButtonAddToWishlist({
    required this.onPressed,
    this.buttonSize = 20,
    this.iconSize = 16,
    this.buttonColor = Colors.white70,
    this.iconColor = Colors.red,
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
            CupertinoIcons.suit_heart_fill,
            // CupertinoIcons.suit_heart,
            color: iconColor,
            size: iconSize,
          ),
        ),
      ),
    );
  }
}
