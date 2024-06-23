import 'package:flutter/material.dart';

import 'package:ecommerce_project/ui/widgets/bottom_sheets/bottom_sheet_payment_summary.dart';
import 'package:ecommerce_project/ui/widgets/textfields/textfield_main.dart';

class PaymentShippingAddress extends StatelessWidget {
  final Function onPressedMain;
  final Function? onPressedOptional;

  const PaymentShippingAddress({
    required this.onPressedMain,
    this.onPressedOptional,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red.withOpacity(0.5),
      child: Column(
        children: [
          const Expanded(
            child: SingleChildScrollView(
              physics: ClampingScrollPhysics(),
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

          /// PAYMENT BOTTOM SHEET
          Align(
            alignment: Alignment.bottomCenter,
            child: BottomSheetPaymentSummary(
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
