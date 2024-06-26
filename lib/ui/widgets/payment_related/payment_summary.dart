import 'package:flutter/material.dart';

import 'package:ecommerce_project/models/product.dart';
import 'package:ecommerce_project/ui/widgets/bottom_sheets/bottom_sheet_payment_summary.dart';
import 'package:ecommerce_project/ui/widgets/cards/product_card_horizontal_mini.dart';
import 'package:ecommerce_project/utilities/k_constants.dart';

class PaymentSummary extends StatelessWidget {
  final Function onPressedMain;
  final Function onPressedOptional;

  const PaymentSummary({
    required this.onPressedMain,
    required this.onPressedOptional,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      // color: Colors.red.withOpacity(0.5),
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: 3,
              scrollDirection: Axis.vertical,
              physics: const ClampingScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: Constants.kPaddingBetweenElementsMain,
                    horizontal: Constants.kPaddingBetweenElementsMain * 2,
                  ),
                  child: ProductCardHorizontalMini(
                    product: Product(
                      title: '$index MOS Sale-Fit Shirt Shirtasdfasdfsdfgsdfg',
                      price: 133.99,
                      mainPhoto: 'assets/images/pose2.jpg',
                    ),
                    cardColor: Colors.white.withOpacity(0.9),
                    cardHeight: 60,
                    cardWidth: size.width,
                    isBorderElevated: true,
                  ),
                );
              },
            ),
          ),

          /// PAYMENT BOTTOM SHEET
          Align(
            alignment: Alignment.bottomCenter,
            child: BottomSheetPaymentSummary(
              isSummaryContentIncluded: true,
              mainButtonText: 'Pay \$248.99',
              onPressedMain: () {
                onPressedMain();
              },
              isOptionalButtonIncluded: true,
              onPressedOptional: () {
                onPressedOptional();
              },
            ),
          ),
        ],
      ),
    );
  }
}
