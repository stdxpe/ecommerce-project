import 'package:ecommerce_project/ui/widgets/button_close_icon.dart';
import 'package:ecommerce_project/utilities/k_constants.dart';
import 'package:ecommerce_project/utilities/k_text_styles.dart';
import 'package:flutter/material.dart';

class ButtonShoppingCartItemCounter extends StatelessWidget {
  final int itemCount;
  const ButtonShoppingCartItemCounter({
    required this.itemCount,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 65,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.3),
        borderRadius: BorderRadius.circular(
          Constants.kRadiusButtonItemCounter,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ButtonCloseIcon(
              onPressed: () {},
              buttonSize: 25,
              iconSize: 15,
              buttonColor: Colors.transparent),
          Text(
            itemCount.toString(),
            style: kWishlistItemsTextStylePrimary,
          ),
          ButtonCloseIcon(
              onPressed: () {},
              buttonSize: 25,
              iconSize: 15,
              buttonColor: Colors.transparent),
        ],
      ),
    );
  }
}
