import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:ecommerce_project/ui/widgets/buttons/button_circular_main.dart';
import 'package:ecommerce_project/utilities/k_constants.dart';
import 'package:ecommerce_project/utilities/k_text_styles.dart';

class ButtonShoppingCartItemCounter extends StatefulWidget {
  int itemCount;
  ButtonShoppingCartItemCounter({
    this.itemCount = 1,
    super.key,
  });

  @override
  State<ButtonShoppingCartItemCounter> createState() =>
      _ButtonShoppingCartItemCounterState();
}

class _ButtonShoppingCartItemCounterState
    extends State<ButtonShoppingCartItemCounter> {
  @override
  Widget build(BuildContext context) {
    // print('First: ${widget.itemCount}');

    return Container(
      // width: 65,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black54.withOpacity(0.35),
            spreadRadius: 0.2,
            blurRadius: 10,
            offset: const Offset(0, 3.5),
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          Constants.kRadiusButtonItemCounter,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          ButtonCircularMain(
            onPressed: () {
              setState(() {
                if (widget.itemCount > 1) widget.itemCount--;
              });
            },
            buttonColor: Colors.white,
            buttonSize: 30,
            iconSize: 15,
            elevationColor: Colors.transparent,
            iconColor: Colors.black,
            icon: CupertinoIcons.minus,
          ),
          Text(
            widget.itemCount.toString(),
            style: kWishlistItemsTextStylePrimary,
          ),
          ButtonCircularMain(
            onPressed: () {
              setState(() {
                widget.itemCount++;
              });
            },
            buttonColor: Colors.white,
            buttonSize: 30,
            iconSize: 15,
            elevationColor: Colors.transparent,
            iconColor: Colors.black,
            icon: CupertinoIcons.add,
          )
        ],
      ),
    );
  }
}
