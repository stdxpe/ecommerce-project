import 'package:flutter/material.dart';

import 'package:ecommerce_project/models/enums.dart';
import 'package:ecommerce_project/ui/screens/home_screen.dart';
import 'package:ecommerce_project/ui/widgets/bottom_sheets/bottom_sheet_payment_summary.dart';
import 'package:ecommerce_project/ui/widgets/dialog_popups/dialog_popup_card_payment_result_screen.dart';
import 'package:ecommerce_project/ui/widgets/dialog_popups/dialog_popup_widget_main.dart';
import 'package:ecommerce_project/ui/widgets/payment_stepper_status_bar.dart';
import 'package:ecommerce_project/ui/widgets/platform_adaptive_widgets/platform_adaptive_navigator.dart';
import 'package:ecommerce_project/ui/widgets/slivers_and_appbars/app_bar_main_non_sliver.dart';
import 'package:ecommerce_project/ui/widgets/titles/title_payment_screen_main.dart';
import 'package:ecommerce_project/utilities/k_constants.dart';

class PaymentScreenStepResult extends StatefulWidget {
  const PaymentScreenStepResult({super.key});

  @override
  State<PaymentScreenStepResult> createState() =>
      _PaymentScreenStepResultState();
}

class _PaymentScreenStepResultState extends State<PaymentScreenStepResult> {
  /// TODO: Riverpod method.
  Future initMethod() async {
    await Future.delayed(const Duration(seconds: 1));
    Size size = MediaQuery.of(context).size;

    print('init state executed');
    DialogPopupWidgetMain(
      context: context,
      barrierDismissible: false,
      content: DialogPopupCardPaymentResultScreen(
        isResultEndedWithSuccess: false,
        cardWidth: size.width * 0.75,
        onPressed: (result) {
          (result)

              /// TODO: This screen gotta take result parameter, not popup widget.
              /// otherwise gotta need popUntil navigator.
              ? PlatformAdaptiveNavigator().pushAndRemoveUntil(
                  context,
                  const HomeScreen(),
                )
              : Navigator.of(context).pop();

          // : Navigator.of(context).popUntil();
        },
      ),
    ).showAlertDialog();
    print('dialog popup executed');
  }

  @override
  void initState() {
    super.initState();
    initMethod();
    // WidgetsFlutterBinding.ensureInitialized;
  }

  ///TODO: Instead of Screen, use Dialog Popup w/ Success or Fail message.
  /// initState method comes from Riverpod methods.

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const AppBarMainNonSliver(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
      ),
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
                  const TitlePaymentScreenMain(title: 'Result', stepNumber: 4),

                  /// TODO: LOTTIE ANIMATION HERE
                  /// PAYMENT [TEMPORARY] CONTENT

                  Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey.withAlpha(35),
                        radius: 100,
                        child: const CircularProgressIndicator(),
                        // const Icon(
                        //   Icons.card_giftcard,
                        //   // Icons.check,

                        //   color: Colors.black,
                        //   size: 100,
                        // ),
                      ),
                      const SizedBox(height: 15),
                      const Text(
                        'Waiting...',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 40,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Please wait for the result.',
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
              /// TODO: if result is false, button Text gotta be?
              isBackButtonIncluded: true,
              buttonText: 'Continue Shopping',
              onPressed: () {
                // PlatformAdaptiveNavigator().push(context, const HomeScreen());

                Navigator.of(context).popUntil((route) => route.isFirst);
              },
            ),
          ],
        ),
      ),
    );
  }
}
