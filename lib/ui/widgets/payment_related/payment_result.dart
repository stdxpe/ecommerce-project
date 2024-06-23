import 'package:flutter/material.dart';

import 'package:ecommerce_project/ui/screens/home_screen.dart';
import 'package:ecommerce_project/ui/widgets/bottom_sheets/bottom_sheet_payment_summary.dart';
import 'package:ecommerce_project/ui/widgets/dialog_popups/dialog_popup_card_payment_result_screen.dart';
import 'package:ecommerce_project/ui/widgets/dialog_popups/dialog_popup_widget_main.dart';
import 'package:ecommerce_project/ui/widgets/platform_adaptive_widgets/platform_adaptive_navigator.dart';

class PaymentResult extends StatefulWidget {
  final Function onPressedMain;
  final Function onPressedOptional;
  final bool isResultEndedWithSuccess;

  const PaymentResult({
    required this.onPressedMain,
    required this.onPressedOptional,
    required this.isResultEndedWithSuccess,
    super.key,
  });

  @override
  State<PaymentResult> createState() => _PaymentResultState();
}

class _PaymentResultState extends State<PaymentResult> {
  /// TODO: Riverpod method.
  Future initCustomMethod() async {
    await Future.delayed(const Duration(seconds: 1));
    Size size = MediaQuery.of(context).size;

    print('init state executed');
    DialogPopupWidgetMain(
      context: context,
      barrierDismissible: false,
      content: DialogPopupCardPaymentResultScreen(
        isResultEndedWithSuccess: widget.isResultEndedWithSuccess,
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
    WidgetsFlutterBinding.ensureInitialized;
    initCustomMethod();
  }

  ///TODO: Instead of Screen, use Dialog Popup w/ Success or Fail message.
  /// initState method comes from Riverpod methods.

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber.withOpacity(0.5),
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              physics: const ClampingScrollPhysics(),
              child: Column(
                children: [
                  /// TODO: LOTTIE ANIMATION HERE
                  /// PAYMENT [TEMPORARY] CONTENT
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
                ],
              ),
            ),
          ),

          /// PAYMENT BOTTOM SHEET
          Align(
            alignment: Alignment.bottomCenter,
            child: BottomSheetPaymentSummary(
              mainButtonText: 'Continue Shopping',
              onPressedMain: () {
                widget.onPressedMain();
              },
              isOptionalButtonIncluded: true,
              onPressedOptional: () {
                widget.onPressedOptional();
              },
            ),
          ),
        ],
      ),
    );
  }
}
