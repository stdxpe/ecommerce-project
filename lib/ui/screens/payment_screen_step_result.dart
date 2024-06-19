import 'package:flutter/material.dart';

import 'package:ecommerce_project/models/enums.dart';
import 'package:ecommerce_project/ui/screens/home_screen.dart';
import 'package:ecommerce_project/ui/widgets/bottom_sheet_payment_summary.dart';
import 'package:ecommerce_project/ui/widgets/payment_stepper_status_bar.dart';
import 'package:ecommerce_project/ui/widgets/platform_adaptive_widgets/platform_adaptive_navigator.dart';
import 'package:ecommerce_project/ui/widgets/slivers/app_bar_non_sliver_standart.dart';
import 'package:ecommerce_project/ui/widgets/titles/title_payment_screen_main.dart';
import 'package:ecommerce_project/utilities/k_constants.dart';

class PaymentScreenStepResult extends StatelessWidget {
  const PaymentScreenStepResult({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const AppBarNonSliverStandart(),
      body: Container(
        height: size.height,
        width: size.width,
        // color: Colors.amber.withOpacity(0.5),
        padding: const EdgeInsets.only(
          top: Constants.kPaddingAppBarAndContent,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              // color: Colors.green.withOpacity(0.5),
              padding: const EdgeInsets.only(
                left: Constants.kPaddingHorizontalMain,
                right: Constants.kPaddingHorizontalMain,
              ),
              child: Column(
                children: [
                  /// PAYMENT STEPPER STATUS BAR
                  PaymentStepperStatusBar(
                    paymentStatus: PaymentStatus.success,
                  ),

                  /// PAYMENT TITLE
                  const TitlePaymentScreenMain(title: 'Success', stepNumber: 4),

                  /// TODO: LOTTIE ANIMATION HERE
                  /// PAYMENT [TEMPORARY] CONTENT

                  Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey.withAlpha(35),
                        radius: 100,
                        child: const Icon(
                          Icons.card_giftcard,
                          // Icons.check,

                          color: Colors.black,
                          size: 100,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Congrats!',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 40,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Thank you for purchasing.\nYour order will be shipped in 2-4 working days.',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      // Expanded(child: Container(color: Colors.red)),
                    ],
                  ),
                ],
              ),
            ),

            /// PAYMENT BUTTON
            BottomSheetPaymentSummary(
              buttonText: 'Continue Shopping',
              onPressed: () {
                PlatformAdaptiveNavigator().push(context, const HomeScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
