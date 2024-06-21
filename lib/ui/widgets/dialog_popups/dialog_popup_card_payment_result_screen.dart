import 'package:flutter/material.dart';

import 'package:ecommerce_project/ui/widgets/buttons/button_main.dart';
import 'package:ecommerce_project/utilities/k_color_palette.dart';
import 'package:ecommerce_project/utilities/k_constants.dart';
import 'package:ecommerce_project/utilities/k_strings_en.dart';
import 'package:ecommerce_project/utilities/k_text_styles.dart';

class DialogPopupCardPaymentResultScreen extends StatelessWidget {
  final bool isResultEndedWithSuccess;
  final Function(bool result) onPressed;
  final String? buttonTextPrimary;
  final double? cardWidth;
  final double? elevation;
  final TextStyle? textStylePrimary;

  const DialogPopupCardPaymentResultScreen({
    required this.isResultEndedWithSuccess,
    required this.onPressed,
    this.buttonTextPrimary = Strings.kStringButtonContinue,
    this.cardWidth,
    this.elevation = 1.5,
    this.textStylePrimary = kDialogPopupCardTextStylePaymentScreen,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      color: Colors.white,
      width: cardWidth ?? size.width * 0.75,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: Constants.kPaddingHorizontalMainDialogPopupButtons,
              vertical: Constants.kPaddingVerticalMainDialogPopupButtons,
            ),
            child: Column(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey.withAlpha(35),
                  radius: 100,
                  child: isResultEndedWithSuccess
                      ? const Icon(
                          Icons.card_giftcard,
                          color: Colors.black,
                          size: 100,
                        )
                      : const Icon(
                          Icons.error,
                          color: Colors.black,
                          size: 100,
                        ),
                ),
                const SizedBox(height: 15),
                Text(
                  isResultEndedWithSuccess
                      ? Strings.kStringPaymentResultTitlePositive
                      : Strings.kStringPaymentResultTitleNegative,
                  overflow: TextOverflow.ellipsis,
                  softWrap: true,
                  maxLines: 1,
                  textAlign: TextAlign.center,
                  style: textStylePrimary,
                ),
                Text(
                  isResultEndedWithSuccess
                      ? Strings.kStringPaymentResultSubtitlePositive
                      : Strings.kStringPaymentResultSubtitleNegative,
                  overflow: TextOverflow.ellipsis,
                  softWrap: true,
                  maxLines: 3,
                  textAlign: TextAlign.center,
                  style: textStylePrimary?.copyWith(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                    height: Constants.kPaddingVerticalMainDialogPopupButtons),
                ButtonMain(
                  onPressed: () {
                    onPressed(isResultEndedWithSuccess);
                  },
                  text: isResultEndedWithSuccess
                      ? buttonTextPrimary
                      : Strings.kStringButtonContinue,
                  buttonColor: ColorPalette.kColorDarkButton,
                  textColor: Colors.white,
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
