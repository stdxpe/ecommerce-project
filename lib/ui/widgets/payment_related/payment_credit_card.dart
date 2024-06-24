import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:ecommerce_project/ui/widgets/bottom_sheets/bottom_sheet_payment_summary.dart';
import 'package:ecommerce_project/ui/widgets/carousel_sliders/carousel_credit_cards.dart';
import 'package:ecommerce_project/ui/widgets/textfields/textfield_main.dart';
import 'package:ecommerce_project/utilities/k_constants.dart';
import 'package:ecommerce_project/utilities/k_strings_en.dart';

class PaymentCreditCard extends StatelessWidget {
  final Function onPressedMain;
  final Function? onPressedOptional;
  final String? buttonText;
  final bool? isPaymentScreen;

  const PaymentCreditCard({
    required this.onPressedMain,
    this.onPressedOptional,
    this.buttonText = Strings.kStringButtonContinue,
    this.isPaymentScreen = true,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.green.withOpacity(0.5),
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              physics: const ClampingScrollPhysics(),
              child: Column(
                children: [
                  /// PAYMENT CONTENT
                  const CarouselCreditCards(
                    ///// Credit Card Global Size: 1011 x 638 px    or   1098 x 648 px
                    ///// Aspect Ratio: 1.5846394984 px             or   0,6310583581 px
                    paddingMain: Constants.kPaddingButtonHorizontalMain * 2,
                    aspectRatioHorizontalToVertical: 1.5846394984,
                    aspectRatioVerticalToHorizontal: 0.6310583581,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: Constants.kPaddingHorizontalMain,
                      right: Constants.kPaddingHorizontalMain,
                    ),
                    child: Column(
                      children: [
                        const TextfieldMain(),
                        const TextfieldMain(),
                        const Row(
                          children: [
                            Flexible(flex: 1, child: TextfieldMain()),
                            SizedBox(
                                width:
                                    Constants.kPaddingBetweenElementsMain * 2),
                            Flexible(flex: 1, child: TextfieldMain()),
                          ],
                        ),
                        if (isPaymentScreen!)
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                flex: 1,
                                child: Checkbox(
                                  activeColor: Colors.grey[900],
                                  checkColor: Colors.white,
                                  value: true,
                                  onChanged: (value) {},
                                ),
                              ),
                              const Flexible(
                                flex: 3,
                                child: Text(
                                  'Save this credit card details',
                                  style: TextStyle(
                                    color: Colors.black87,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0.3,
                                  ),
                                  textAlign: TextAlign.start,
                                ),
                              ),
                              Flexible(
                                flex: 1,
                                child: CupertinoSwitch(
                                  onChanged: (value) {},
                                  value: true,
                                ),
                              ),
                            ],
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          /// PAYMENT BOTTOM SHEET
          Align(
            alignment: Alignment.bottomCenter,
            child: BottomSheetPaymentSummary(
              mainButtonText: buttonText,
              onPressedMain: () {
                onPressedMain();
              },
              isOptionalButtonIncluded: isPaymentScreen! ? true : false,
              onPressedOptional: () {
                onPressedOptional!();
              },
            ),
          ),
        ],
      ),
    );
  }
}
