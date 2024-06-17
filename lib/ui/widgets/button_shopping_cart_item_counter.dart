import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:ecommerce_project/ui/widgets/button_circular_main.dart';
import 'package:ecommerce_project/utilities/k_constants.dart';
import 'package:ecommerce_project/utilities/k_text_styles.dart';

class ButtonShoppingCartItemCounter extends StatelessWidget {
  final int itemCount;
  const ButtonShoppingCartItemCounter({
    required this.itemCount,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
            onPressed: () {},
            buttonColor: Colors.white,
            buttonSize: 30,
            iconSize: 15,
            elevationColor: Colors.transparent,
            iconColor: Colors.black,
            icon: CupertinoIcons.minus,
          ),
          Text(
            itemCount.toString(),
            style: kWishlistItemsTextStylePrimary,
          ),
          ButtonCircularMain(
            onPressed: () {},
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
