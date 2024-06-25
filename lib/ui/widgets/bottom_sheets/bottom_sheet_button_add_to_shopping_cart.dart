import 'package:flutter/material.dart';

import 'package:ecommerce_project/ui/widgets/buttons/button_main.dart';
import 'package:ecommerce_project/utilities/k_color_palette.dart';
import 'package:ecommerce_project/utilities/k_constants.dart';
import 'package:ecommerce_project/utilities/k_strings_en.dart';

class BottomSheetButtonAddToShoppingCart extends StatelessWidget {
  final Function() onPressedMain;
  final String? mainButtonText;
  final double? paddingHorizontalMain;
  final double? paddingTop;
  final double? paddingBottom;
  final double? paddingButtonTop;

  const BottomSheetButtonAddToShoppingCart({
    required this.onPressedMain,
    this.mainButtonText = Strings.kStringButtonAddToShoppingCart,
    this.paddingHorizontalMain = Constants.kPaddingButtonHorizontalMain,
    this.paddingTop = Constants.kPaddingButtonTopMain,
    this.paddingBottom = Constants.kPaddingButtonBottomMain,
    this.paddingButtonTop = Constants.kPaddingButtonBottomMain,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Card(
      margin: EdgeInsets.zero,
      elevation: 10,
      child: Container(
        width: size.width,
        decoration: BoxDecoration(
          color: ColorPalette.kColorModalBottomSheet,
          boxShadow: [
            BoxShadow(
              color: Colors.black54.withOpacity(0.15),
              spreadRadius: 0.5,
              blurRadius: 10,
              offset: const Offset(0, 0),
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.only(
            left: paddingHorizontalMain!,
            right: paddingHorizontalMain!,
            top: paddingTop!,
            bottom: paddingBottom!,
          ),
          child: Column(
            children: [
              ButtonMain(
                text: mainButtonText,
                paddingHorizontal: 0,
                paddingVertical: 0,
                borderWidth: 1.5,
                icon: const Icon(
                  Icons.add,
                  color: Colors.black,
                  size: 18,
                ),
                buttonColor: ColorPalette.kColorModalBottomSheet,
                onPressed: () {
                  onPressedMain();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
