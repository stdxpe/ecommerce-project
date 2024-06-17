import 'package:flutter/material.dart';

class ButtonMain extends StatelessWidget {
  final Function onPressed;
  final String? text;
  final Color? textColor;
  final double? textFontSize;
  final Widget? icon;
  final Color? buttonColor;
  final double? height;
  final double? width;
  final bool? useShadow;
  final double? paddingHorizontal;
  final double? paddingLeft;
  final double? paddingRight;
  final double? paddingVertical;
  final double? borderWidth;

  const ButtonMain({
    super.key,
    required this.onPressed,
    this.text,
    this.textColor,
    this.textFontSize,
    this.icon,
    this.buttonColor,
    this.height,
    this.width,
    this.useShadow = true,
    this.paddingHorizontal = 35,
    this.paddingLeft,
    this.paddingRight,
    this.paddingVertical = 0,
    this.borderWidth,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onPressed();
      },
      child: Padding(
        padding: EdgeInsets.fromLTRB(
          paddingLeft ?? paddingHorizontal!,
          paddingVertical!,
          paddingRight ?? paddingHorizontal!,
          paddingVertical!,
        ),
        child: Container(
          width: width,
          height: height ?? 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: buttonColor ?? Colors.white,
            border: Border.all(
              width: borderWidth ?? 0,
              color: (borderWidth != null && borderWidth != 0)
                  ? Colors.black87
                  : Colors.transparent,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black54.withOpacity(useShadow! ? 0.35 : 0.1),
                spreadRadius: 0.1,
                blurRadius: 10,
                offset: const Offset(0, 3.5),
              ),
            ],
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                if (icon != null) icon!,
                if (icon != null && text != null) const SizedBox(width: 8),
                if (text != null)
                  Text(
                    text!,
                    style: TextStyle(
                      color: textColor ?? Colors.black,
                      fontSize: textFontSize ?? 14,
                      fontWeight: FontWeight.w600,
                    ),
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
