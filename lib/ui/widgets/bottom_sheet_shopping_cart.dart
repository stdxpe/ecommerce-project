import 'package:flutter/material.dart';

import 'package:ecommerce_project/ui/screens/payment_screen_step_shipping.dart';
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
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          Constants.kRadiusCardSecondary,
        ),
      ),
      child: Container(
        height: size.height * 0.27,
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
              const SizedBox(height: Constants.kPaddingBetweenElementsMain),
              ButtonMain(
                paddingHorizontal: 0,
                paddingVertical: 0,
                text: Strings.kStringButtonContinue,
                textColor: Colors.white,
                buttonColor: ColorPalette.kColorDarkButton,
                onPressed: () {
                  PlatformAdaptiveNavigator()
                      .push(context, const PaymentScreenStepShipping());
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
