import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:ecommerce_project/ui/widgets/buttons/button_circular_main.dart';

class ButtonAddToWishlist extends StatefulWidget {
  final Function onPressed;
  final double? buttonSize;
  final double? iconSize;
  bool? isFavorited;

  ButtonAddToWishlist({
    required this.onPressed,
    this.buttonSize = 65,
    this.iconSize = 25,
    this.isFavorited = false,
    super.key,
  });

  @override
  State<ButtonAddToWishlist> createState() => _ButtonAddToWishlistState();
}

class _ButtonAddToWishlistState extends State<ButtonAddToWishlist> {
  @override
  Widget build(BuildContext context) {
    return ButtonCircularMain(
      onPressed: () {
        setState(() {
          /// TODO: Riverpod Add to Wishlist Method here.
          widget.isFavorited = !widget.isFavorited!;
        });
        widget.onPressed();
      },
      // icon: CupertinoIcons.suit_heart_fill,
      icon: widget.isFavorited!
          ? CupertinoIcons.suit_heart_fill
          : CupertinoIcons.suit_heart,
      // icon: Icons.favorite_outline_rounded,
      // icon: Icons.favorite_rounded,
      iconColor: Colors.red,
      buttonColor: Colors.white,
      buttonSize: widget.buttonSize,
      iconSize: widget.iconSize,
    );
  }
}
