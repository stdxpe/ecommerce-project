import 'package:flutter/material.dart';

import 'package:ecommerce_project/ui/widgets/buttons/button_main.dart';
import 'package:ecommerce_project/ui/widgets/titles/title_shopping_card_bottom_sheet.dart';
import 'package:ecommerce_project/utilities/k_color_palette.dart';
import 'package:ecommerce_project/utilities/k_constants.dart';
import 'package:ecommerce_project/utilities/k_strings_en.dart';

class BottomSheetShoppingCart extends StatelessWidget {
  final Function onPressed;
  final String? buttonText;
  final double? paddingHorizontalMain;
  final double? paddingTop;
  final double? paddingBottom;
  final double? paddingButtonTop;

  const BottomSheetShoppingCart({
    required this.onPressed,
    this.buttonText = Strings.kStringButtonContinue,
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
            top: paddingBottom!,
            bottom: paddingBottom!,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const TitleShoppingCardBottomSheet(
                leftSideText: 'Promo Code',
                rightSideText: 'springsale',
              ),
              SizedBox(height: paddingTop!),
              const TitleShoppingCardBottomSheet(
                leftSideText: Strings.kStringTotalAmount,
                rightSideText: '\$123.99',
              ),
              SizedBox(height: paddingButtonTop!),
              ButtonMain(
                paddingHorizontal: 0,
                paddingVertical: 0,
                text: Strings.kStringButtonContinue,
                textColor: Colors.white,
                buttonColor: ColorPalette.kColorDarkButton,
                onPressed: () {
                  onPressed();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
