import 'package:flutter/material.dart';

class ButtonCircularMain extends StatelessWidget {
  final Function onPressed;
  final IconData? icon;
  final Widget? alternativeWidgetContent;
  final double? buttonSize;
  final double? iconSize;
  final Color? buttonColor;
  final Color? iconColor;
  final double? elevation;
  final Color? elevationColor;

  const ButtonCircularMain({
    required this.onPressed,
    this.icon,
    this.alternativeWidgetContent,
    this.buttonSize = 65,
    this.iconSize = 25,
    this.buttonColor = Colors.white,
    this.iconColor = Colors.black,
    this.elevation = 0.2,
    this.elevationColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(30),
      onTap: () {
        onPressed();
      },
      child: Container(
        height: buttonSize,
        width: buttonSize,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: elevationColor ?? Colors.black54.withOpacity(0.35),
              spreadRadius: elevation!,
              blurRadius: 10,
              offset: const Offset(0, 3.5),
            ),
          ],
          shape: BoxShape.circle,
          color: buttonColor,
        ),
        child: Center(
          child: (icon is IconData)
              ? Icon(
                  icon,
                  color: iconColor,
                  size: iconSize,
                )
              : alternativeWidgetContent,
        ),
      ),
    );
  }
}
