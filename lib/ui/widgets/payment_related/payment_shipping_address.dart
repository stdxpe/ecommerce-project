import 'package:flutter/material.dart';

import 'package:ecommerce_project/ui/widgets/bottom_sheets/bottom_sheet_payment_summary.dart';
import 'package:ecommerce_project/ui/widgets/textfields/textfield_main.dart';
import 'package:ecommerce_project/utilities/k_constants.dart';
import 'package:ecommerce_project/utilities/k_strings_en.dart';

class PaymentShippingAddress extends StatelessWidget {
  final String? buttonText;
  final Function onPressedMain;
  final Function? onPressedOptional;

  const PaymentShippingAddress({
    required this.onPressedMain,
    this.onPressedOptional,
    this.buttonText = Strings.kStringButtonContinue,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red.withOpacity(0.5),

      child: Column(
        children: [
          const Expanded(
            child: SingleChildScrollView(
              physics: ClampingScrollPhysics(),
              child: Padding(
                padding: EdgeInsets.only(
                  left: Constants.kPaddingHorizontalMain,
                  right: Constants.kPaddingHorizontalMain,
                  bottom: Constants.kPaddingAppBottom,
                ),
                child: Column(
                  children: [
                    /// PAYMENT TEXTFIELDS
                    TextfieldMain(),
                    TextfieldMain(),
                    TextfieldMain(),
                    TextfieldMain(),
                  ],
                ),
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
            ),
          ),
        ],
      ),
    );
  }
}
