import 'package:flutter/material.dart';

import 'package:ecommerce_project/models/enums.dart';
import 'package:ecommerce_project/models/product.dart';
import 'package:ecommerce_project/ui/screens/payment_screen_step_result.dart';
import 'package:ecommerce_project/ui/widgets/bottom_sheet_payment_summary.dart';
import 'package:ecommerce_project/ui/widgets/payment_stepper_status_bar.dart';
import 'package:ecommerce_project/ui/widgets/platform_adaptive_widgets/platform_adaptive_navigator.dart';
import 'package:ecommerce_project/ui/widgets/product_card_horizontal_mini.dart';
import 'package:ecommerce_project/ui/widgets/sliver_app_bars/app_bar_non_sliver_standart.dart';
import 'package:ecommerce_project/ui/widgets/title_payment_screen_main.dart';
import 'package:ecommerce_project/utilities/k_constants.dart';

class PaymentScreenStepSummary extends StatelessWidget {
  const PaymentScreenStepSummary({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const AppBarNonSliverStandart(),
      body: SizedBox(
        height: size.height,
        width: size.width,
        // color: Colors.amber.withOpacity(0.5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: SingleChildScrollView(
                physics: const ClampingScrollPhysics(),
                child: Container(
                  //   color: Colors.green.withOpacity(0.5),
                  padding: const EdgeInsets.only(
                    left: Constants.kPaddingHorizontalMain,
                    right: Constants.kPaddingHorizontalMain,
                    bottom: 0,
                    top: Constants.kPaddingAppBarAndContent,
                  ),
                  child: Column(
                    children: [
                      /// PAYMENT STEPPER STATUS BAR
                      PaymentStepperStatusBar(
                        paymentStatus: PaymentStatus.summary,
                      ),

                      /// PAYMENT TITLE
                      const TitlePaymentScreenMain(
                          title: 'Summary', stepNumber: 3),

                      /// PAYMENT CONTENT
                      SizedBox(
                        width: size.width,
                        // color: Colors.red.withOpacity(0.5),
                        child: ListView.builder(
                          clipBehavior: Clip.hardEdge,
                          // padding: EdgeInsets.zero,
                          itemCount: 12,
                          scrollDirection: Axis.vertical,
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical:
                                      Constants.kPaddingBetweenElementsMain),
                              child: ProductCardHorizontalMini(
                                product: Product(
                                  title:
                                      'MOS Sale-Fit Shirt Shirtasdfasdfsdfgsdfg',
                                  price: 133.99,
                                  imageUrl: 'assets/images/pose2.jpg',
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
                    ],
                  ),
                ),
              ),
            ),

            /// PAYMENT BOTTOM SHEET
            BottomSheetPaymentSummary(
              onPressed: () {
                PlatformAdaptiveNavigator()
                    .push(context, const PaymentScreenStepResult());
              },
              buttonText: 'Pay \$248.99',
              isContentIncluded: true,
            ),
          ],
        ),
      ),
    );
  }
}
