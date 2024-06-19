import 'package:flutter/material.dart';

import 'package:ecommerce_project/ui/widgets/button_circular_main.dart';
import 'package:ecommerce_project/ui/widgets/button_main.dart';
import 'package:ecommerce_project/utilities/k_color_palette.dart';
import 'package:ecommerce_project/utilities/k_constants.dart';

class BottomSheetButtonSetAddOrLike extends StatelessWidget {
  const BottomSheetButtonSetAddOrLike({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      padding: const EdgeInsets.only(
        left: Constants.kPaddingButtonHorizontalMain,
        right: Constants.kPaddingButtonHorizontalMain,
        top: Constants.kPaddingHorizontalMain,
        bottom: Constants.kPaddingButtonHorizontalMain,
      ),
      decoration: BoxDecoration(
        color: ColorPalette.kColorModalBottomSheet,
        // color: Colors.green.withOpacity(0.5),
        boxShadow: [
          BoxShadow(
            color: Colors.black54.withOpacity(0.15),
            spreadRadius: 0.5,
            blurRadius: 10,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ButtonMain(
              onPressed: () {},
              text: 'Add to Shopping Cart',
              buttonColor: ColorPalette.kColorDarkButton,
              textColor: Colors.white,
              paddingHorizontal: 0,
            ),
          ),
          const SizedBox(width: 15),
          ButtonCircularMain(
            onPressed: () {},
            icon: Icons.favorite,
            iconColor: Colors.red,
            buttonSize: 50,
          ),
        ],
      ),
    );
  }
}
