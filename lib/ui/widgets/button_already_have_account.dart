import 'package:flutter/material.dart';

class ButtonAlreadyHaveAccount extends StatelessWidget {
  final Function function;
  final String? textStatic;
  final String buttonText;
  final Color? textStaticColor;
  final Color? buttonTextColor;
  final double? textSize;

  const ButtonAlreadyHaveAccount({
    required this.function,
    this.textStatic,
    required this.buttonText,
    this.textStaticColor,
    this.buttonTextColor,
    this.textSize,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          textStatic ?? '',
          style: TextStyle(
            color: textStaticColor ?? Colors.black87,
            fontSize: textSize ?? 13,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.2,
          ),
          textAlign: TextAlign.center,
        ),
        GestureDetector(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 7.5),
            child: Text(
              buttonText,
              style: TextStyle(
                color: buttonTextColor ?? Colors.black,
                fontSize: textSize ?? 13,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
