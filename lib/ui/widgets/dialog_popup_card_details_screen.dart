import 'package:ecommerce_project/ui/screens/shopping_cart_screen.dart';
import 'package:ecommerce_project/ui/widgets/platform_adaptive_widgets/platform_adaptive_navigator.dart';
import 'package:ecommerce_project/utilities/k_color_palette.dart';
import 'package:ecommerce_project/utilities/k_constants.dart';
import 'package:flutter/material.dart';

import 'package:ecommerce_project/ui/widgets/button_close_icon.dart';
import 'package:ecommerce_project/ui/widgets/button_main.dart';
import 'package:ecommerce_project/utilities/k_text_styles.dart';

class DialogPopupCardDetailsScreen extends StatelessWidget {
  // final Product product;

  final String title;
  final String buttonTextPrimary;
  final String buttonTextSecondary;
  final String imageUrl;
  final double cardHeight;
  final double cardWidth;
  final double? elevation;
  final TextStyle? textStylePrimary;

  const DialogPopupCardDetailsScreen({
    required this.title,
    required this.buttonTextPrimary,
    required this.buttonTextSecondary,
    required this.imageUrl,
    required this.cardHeight,
    required this.cardWidth,
    this.elevation = 1.5,
    this.textStylePrimary = kDialogPopupCardTextStyleDetailsScreen,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: cardWidth,
      child: Column(
        children: [
          Image.asset(
            height: cardHeight * 0.5,
            width: cardWidth,
            imageUrl,
            fit: BoxFit.cover,
            alignment: Alignment.topCenter,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: Constants.kPaddingHorizontalMainDialogPopupButtons,
              vertical: Constants.kPaddingVerticalMainDialogPopupButtons,
            ),
            child: Column(
              children: [
                Text(
                  title,
                  overflow: TextOverflow.ellipsis,
                  softWrap: true,
                  maxLines: 3,
                  textAlign: TextAlign.center,
                  style: textStylePrimary,
                ),
                const SizedBox(
                    height: Constants.kPaddingVerticalMainDialogPopupButtons),
                ButtonMain(
                  onPressed: () {
                    PlatformAdaptiveNavigator().pushReplacement(
                      context,
                      const ShoppingCartScreen(),
                    );
                  },
                  text: buttonTextPrimary,
                  buttonColor: ColorPalette.kColorDarkButton,
                  textColor: Colors.white,
                  width: cardWidth,
                  height: 50,
                  paddingHorizontal: 0,
                  paddingVertical: 0,
                ),
                const SizedBox(
                    height: Constants
                        .kPaddingVerticalMainDialogPopupBetweenButtons),
                ButtonMain(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  text: buttonTextSecondary,
                  width: cardWidth,
                  height: 50,
                  paddingHorizontal: 0,
                  paddingVertical: 0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}