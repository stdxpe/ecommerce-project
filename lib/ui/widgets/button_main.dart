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
  final double? paddingVertical;
  final double? borderWidth;

  const ButtonMain({
    required this.onPressed,
    this.text,
    this.textColor,
    this.textFontSize,
    this.icon,
    this.buttonColor,
    this.height,
    this.width,
    this.useShadow = true,
    this.paddingHorizontal,
    this.paddingVertical,
    this.borderWidth,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        onPressed();
      },
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: paddingHorizontal ?? 30,
          vertical: paddingVertical ?? 0,
        ),
        child: Container(
          width: width ?? size.width,
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
