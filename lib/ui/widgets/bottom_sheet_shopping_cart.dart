import 'package:flutter/material.dart';

import 'package:ecommerce_project/ui/screens/payment_screen.dart';
import 'package:ecommerce_project/ui/widgets/button_main.dart';
import 'package:ecommerce_project/ui/widgets/platform_adaptive_widgets/platform_adaptive_navigator.dart';
import 'package:ecommerce_project/ui/widgets/title_shopping_card_bottom_sheet.dart';
import 'package:ecommerce_project/utilities/k_color_palette.dart';
import 'package:ecommerce_project/utilities/k_constants.dart';
import 'package:ecommerce_project/utilities/k_strings_en.dart';

class BottomSheetShoppingCart extends StatelessWidget {
  const BottomSheetShoppingCart({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Card(
      margin: EdgeInsets.zero,
      elevation: 10,
      clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          Constants.kRadiusCardSecondary,
        ),
      ),
      child: Container(
        height: size.height * 0.25,
        width: size.width,
        color: ColorPalette.kDarkButtonColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Constants.kPaddingHorizontalMain * 2,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const TitleShoppingCardBottomSheet(
                leftSideText: 'Promo Code',
                rightSideText: 'springsale',
              ),
              const TitleShoppingCardBottomSheet(
                leftSideText: Strings.kStringTotalAmount,
                rightSideText: '\$123.99',
              ),
              ButtonMain(
                paddingHorizontal: 0,
                paddingVertical: 0,
                text: Strings.kStringButtonContinue,
                textColor: Colors.white,
                buttonColor: const Color(0xFF22252A),
                onPressed: () {
                  PlatformAdaptiveNavigator()
                      .push(context, const PaymentScreen());
                },
              ),
              const SizedBox(height: Constants.kPaddingBetweenElementsMain),
            ],
          ),
        ),
      ),
    );
  }
}
