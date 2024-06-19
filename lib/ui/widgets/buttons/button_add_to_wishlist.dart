import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:ecommerce_project/ui/widgets/buttons/button_circular_main.dart';

class ButtonAddToWishlist extends StatelessWidget {
  final Function onPressed;
  final double? buttonSize;
  final double? iconSize;

  const ButtonAddToWishlist({
    required this.onPressed,
    this.buttonSize = 17,
    this.iconSize = 10,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ButtonCircularMain(
      onPressed: () {
        onPressed();
      },
      icon: CupertinoIcons.suit_heart_fill,
      // icon: Icons.favorite_outline_rounded,
      // icon: Icons.favorite_rounded,
      iconColor: Colors.red,
      buttonColor: Colors.white.withOpacity(0.9),
      buttonSize: buttonSize,
      iconSize: iconSize,
    );
  }
}
