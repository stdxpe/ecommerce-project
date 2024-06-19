import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:ecommerce_project/models/enums.dart';
import 'package:ecommerce_project/ui/screens/payment_screen_step_summary.dart';
import 'package:ecommerce_project/ui/widgets/bottom_sheet_payment_summary.dart';
import 'package:ecommerce_project/ui/widgets/carousel_sliders/carousel_credit_cards.dart';
import 'package:ecommerce_project/ui/widgets/payment_stepper_status_bar.dart';
import 'package:ecommerce_project/ui/widgets/platform_adaptive_widgets/platform_adaptive_navigator.dart';
import 'package:ecommerce_project/ui/widgets/sliver_app_bars/app_bar_non_sliver_standart.dart';
import 'package:ecommerce_project/ui/widgets/textfield_main.dart';
import 'package:ecommerce_project/ui/widgets/title_payment_screen_main.dart';
import 'package:ecommerce_project/utilities/k_constants.dart';

class PaymentScreenStepPayment extends StatelessWidget {
  const PaymentScreenStepPayment({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double systemToolbarHeight = MediaQuery.of(context).padding.top;
    double appBarHeight = kToolbarHeight;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const AppBarNonSliverStandart(),
      body: SingleChildScrollView(
        clipBehavior: Clip.none,
        padding: EdgeInsets.zero,
        physics: const ClampingScrollPhysics(),
        child: Container(
          height: (size.height - appBarHeight - systemToolbarHeight),
          width: size.width,
          // color: Colors.amber.withOpacity(0.5),
          padding: const EdgeInsets.only(
            top: Constants.kPaddingAppBarAndContent,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                children: [
                  /// PAYMENT STEPPER STATUS BAR
                  Padding(
                    padding: const EdgeInsets.only(
                      left: Constants.kPaddingHorizontalMain,
                      right: Constants.kPaddingHorizontalMain,
                    ),
                    child: PaymentStepperStatusBar(
                      paymentStatus: PaymentStatus.payment,
                    ),
                  ),

                  /// PAYMENT TITLE
                  const Padding(
                    padding: EdgeInsets.only(
                      left: Constants.kPaddingHorizontalMain,
                      right: Constants.kPaddingHorizontalMain,
                    ),
                    child:
                        TitlePaymentScreenMain(title: 'Payment', stepNumber: 2),
                  ),

                  /// PAYMENT CONTENT
                  const CarouselCreditCards(
                    ///// Credit Card Global Size: 1011 x 638 px    or   1098 x 648 px
                    ///// Aspect Ratio: 1.5846394984 px             or   0,6310583581 px
                    paddingMain: Constants.kPaddingButtonHorizontalMain * 2,
                    aspectRatioHorizontalToVertical: 1.5846394984,
                    aspectRatioVerticalToHorizontal: 0.6310583581,
                  ),

                  /// PAYMENT TEXTFIELDS
                  Container(
                    width: size.width,
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
                                onChanged: (bool) {},
                              ),
                            ),
                            const Flexible(
                              flex: 3,
                              child: Text(
                                'Save this credit card details',
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 14,
                                  // shadows: [kBoxShadowText],
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

              /// PAYMENT BUTTON
              BottomSheetPaymentSummary(
                onPressed: () {
                  PlatformAdaptiveNavigator()
                      .push(context, const PaymentScreenStepSummary());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
