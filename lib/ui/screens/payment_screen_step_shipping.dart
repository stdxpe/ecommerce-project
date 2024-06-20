import 'package:flutter/material.dart';

import 'package:ecommerce_project/models/enums.dart';
import 'package:ecommerce_project/ui/screens/payment_screen_step_payment.dart';
import 'package:ecommerce_project/ui/widgets/bottom_sheets/bottom_sheet_payment_summary.dart';
import 'package:ecommerce_project/ui/widgets/payment_stepper_status_bar.dart';
import 'package:ecommerce_project/ui/widgets/platform_adaptive_widgets/platform_adaptive_navigator.dart';
import 'package:ecommerce_project/ui/widgets/slivers_and_appbars/app_bar_standart_back_button.dart';
import 'package:ecommerce_project/ui/widgets/textfields/textfield_main.dart';
import 'package:ecommerce_project/ui/widgets/titles/title_payment_screen_main.dart';
import 'package:ecommerce_project/utilities/k_constants.dart';

class PaymentScreenStepShipping extends StatelessWidget {
  const PaymentScreenStepShipping({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double systemToolbarHeight = MediaQuery.of(context).padding.top;
    double appBarHeight = kToolbarHeight;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const AppBarStandartBackButton(),
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
              Container(
                padding: const EdgeInsets.only(
                  left: Constants.kPaddingHorizontalMain,
                  right: Constants.kPaddingHorizontalMain,
                ),
                child: Column(
                  children: [
                    /// PAYMENT STEPPER STATUS BAR
                    PaymentStepperStatusBar(
                      paymentStatus: PaymentStatus.shipping,
                    ),

                    /// PAYMENT TITLE
                    const TitlePaymentScreenMain(
                        title: 'Shipping', stepNumber: 1),

                    /// PAYMENT TEXTFIELDS
                    const TextfieldMain(),
                    const TextfieldMain(),
                    const TextfieldMain(),
                    const TextfieldMain(),
                    const TextfieldMain(),
                    const TextfieldMain(),
                  ],
                ),
              ),

              /// PAYMENT BUTTON
              BottomSheetPaymentSummary(
                onPressed: () {
                  PlatformAdaptiveNavigator()
                      .push(context, const PaymentScreenStepPayment());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}


/// TODO: if stepper needed?
// Stepper(
//   type: StepperType.horizontal,
//   steps: stepsList,
//   stepIconMargin: EdgeInsets.symmetric(horizontal: 5),
//   stepIconHeight: 30,
//   stepIconWidth: 30,
//   connectorThickness: 3,
//   currentStep: _currentStep,
//   onStepTapped: (value) {
//     setState(() {
//       _currentStep = value;
//     });
//   },
//   onStepContinue: () {
//     setState(() {
//       _currentStep++;
//     });
//   },
//   onStepCancel: () {
//     setState(() {
//       _currentStep--;
//     });
//   },
//   stepIconBuilder: (stepIndex, stepState) {
//     if (stepIndex == 0)
//       return Icon(Icons.location_on, color: Colors.white);
//     if (stepIndex == 1) return Icon(Icons.wallet_outlined);
//     if (stepIndex == 2) return Icon(Icons.check_box);
//   },
// ),
