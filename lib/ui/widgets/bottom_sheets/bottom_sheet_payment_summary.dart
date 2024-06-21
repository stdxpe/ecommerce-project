import 'package:flutter/material.dart';

import 'package:ecommerce_project/ui/widgets/buttons/button_main.dart';
import 'package:ecommerce_project/ui/widgets/titles/title_payment_summary_change.dart';
import 'package:ecommerce_project/utilities/k_color_palette.dart';
import 'package:ecommerce_project/utilities/k_constants.dart';
import 'package:ecommerce_project/utilities/k_strings_en.dart';
import 'package:ecommerce_project/utilities/k_text_styles.dart';

class BottomSheetPaymentSummary extends StatelessWidget {
  final Function onPressed;
  final String? buttonText;
  final String? optionalButtonText;

  final bool? isContentIncluded;
  final bool? isBackButtonIncluded;

  final double? paddingHorizontalMain;
  final double? paddingTop;
  final double? paddingBottom;
  final double? paddingButtonTop;

  const BottomSheetPaymentSummary({
    required this.onPressed,
    this.isContentIncluded = false,
    this.isBackButtonIncluded = false,
    this.buttonText = Strings.kStringButtonContinue,
    this.optionalButtonText = Strings.kStringButtonBack,
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
              if (isContentIncluded!)
                Column(
                  children: [
                    /// TODO: Address and Credit Card info comes here.
                    TitlePaymentSummaryChange(
                      title: 'Shipping Address',
                      subtext:
                          '21st Greenday Street 100021\nNew York / Manhattan\nUnited States',
                      onPressed: () {},
                    ),
                    const Divider(
                      thickness: 0.75,
                      height: Constants.kPaddingContentAndContent,
                      color: Colors.black26,
                    ),

                    TitlePaymentSummaryChange(
                      title: 'Payment',
                      subtext: '**** **** **** 5247',
                      subTextStyle:
                          kPaymentScreenSummarySubtitleCreditCardTextStyle,
                      onPressed: () {},
                    ),
                    const Divider(
                      thickness: 0.75,
                      height: Constants.kPaddingContentAndContent,
                      color: Colors.black26,
                    ),

                    SizedBox(height: paddingTop!),
                  ],
                ),
              Container(
                // color: Colors.red.withOpacity(0.5),
                child: Row(
                  children: [
                    /// TODO: Not sure of with back button
                    if (isBackButtonIncluded!)
                      Expanded(
                        child: ButtonMain(
                          paddingHorizontal: 0,
                          paddingVertical: 0,
                          text: optionalButtonText,
                          textColor: Colors.white,
                          buttonColor: ColorPalette.kColorDarkButton,
                          onPressed: () {
                            /// TODO: That shouldnt be navigator pop. Gotta need stepper like widget. For saving state
                            Navigator.of(context).pop();
                          },
                        ),
                      ),
                    if (isBackButtonIncluded!)
                      const SizedBox(
                          width: Constants.kPaddingBetweenElementsMain * 2),
                    Expanded(
                      child: ButtonMain(
                        paddingHorizontal: 0,
                        paddingVertical: 0,
                        text: buttonText,
                        textColor: Colors.white,
                        buttonColor: ColorPalette.kColorDarkButton,
                        onPressed: () {
                          onPressed();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
