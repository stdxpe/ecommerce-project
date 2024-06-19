import 'package:flutter/material.dart';

import 'package:ecommerce_project/ui/widgets/buttons/button_circular_main.dart';

class ButtonCloseIcon extends StatelessWidget {
  final Function onPressed;
  final double? buttonSize;
  final Color? buttonColor;
  final double? iconSize;
  final Color? iconColor;
  final Color? elevationColor;

  const ButtonCloseIcon({
    required this.onPressed,
    this.buttonSize = 28,
    this.buttonColor = Colors.white70,
    this.iconSize = 18,
    this.iconColor = Colors.black87,
    this.elevationColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ButtonCircularMain(
      onPressed: () {
        onPressed();
      },
      icon: Icons.close_sharp,
      iconColor: iconColor,
      buttonColor: buttonColor,
      buttonSize: buttonSize,
      iconSize: iconSize,
      elevation: 0.2,
      elevationColor: elevationColor ?? Colors.black54.withOpacity(0.2),
    );
  }
}
