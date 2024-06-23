import 'package:flutter/material.dart';

import 'package:ecommerce_project/models/enums.dart';
import 'package:ecommerce_project/ui/widgets/buttons/button_circular_main.dart';
import 'package:ecommerce_project/ui/widgets/payment_related/payment_status_bar_dot.dart';
import 'package:ecommerce_project/utilities/k_constants.dart';

class PaymentStepperStatusBar extends StatelessWidget {
  PaymentStatus? paymentStatus;
  final Function(PaymentStatus paymentStatus)? onPressed;
  final Color? activeColor;
  final Color? passiveColor;

  PaymentStepperStatusBar({
    this.paymentStatus = PaymentStatus.shipping,
    // this.paymentStatus,
    this.onPressed,
    this.activeColor = Colors.black,
    this.passiveColor = Colors.black26,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    /// TODO: Riverpod provider awaiting for these.

    List<Color> currentColors = [];
    currentColors.clear();
    if (paymentStatus == PaymentStatus.shipping) {
      currentColors.clear();
      currentColors = [
        activeColor!,
        passiveColor!,
        passiveColor!,
        passiveColor!,
        passiveColor!,
        passiveColor!,
        passiveColor!,
        passiveColor!,
        passiveColor!,
      ];
    } else if (paymentStatus == PaymentStatus.payment) {
      currentColors.clear();
      currentColors = [
        activeColor!,
        activeColor!,
        activeColor!,
        activeColor!,
        activeColor!,
        passiveColor!,
        passiveColor!,
        passiveColor!,
        passiveColor!,
      ];
    } else if (paymentStatus == PaymentStatus.summary) {
      currentColors.clear();
      currentColors = [
        activeColor!,
        activeColor!,
        activeColor!,
        activeColor!,
        activeColor!,
        activeColor!,
        activeColor!,
        activeColor!,
        activeColor!,
      ];
    } else if (paymentStatus == PaymentStatus.result) {
      currentColors.clear();
      currentColors = [
        activeColor!,
        activeColor!,
        activeColor!,
        activeColor!,
        activeColor!,
        activeColor!,
        activeColor!,
        activeColor!,
        activeColor!,
      ];
    } else if (paymentStatus == PaymentStatus.success) {
      currentColors.clear();
      currentColors = [
        activeColor!,
        activeColor!,
        activeColor!,
        activeColor!,
        activeColor!,
        activeColor!,
        activeColor!,
        activeColor!,
        activeColor!,
      ];
    } else if (paymentStatus == PaymentStatus.failed) {
      currentColors.clear();
      currentColors = [
        passiveColor!,
        passiveColor!,
        passiveColor!,
        passiveColor!,
        passiveColor!,
        passiveColor!,
        passiveColor!,
        passiveColor!,
        passiveColor!,
      ];
    }

    return Container(
      clipBehavior: Clip.none,
      // color: Colors.green.withOpacity(0.5),
      padding: const EdgeInsets.only(
        left: Constants.kPaddingHorizontalMain * 2,
        right: Constants.kPaddingHorizontalMain * 2,
        bottom: 15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonCircularMain(
            onPressed: () {
              paymentStatus = PaymentStatus.shipping;
              onPressed!(paymentStatus!);
            },
            buttonSize: 30,
            iconSize: 20,
            icon: Icons.location_on,
            iconColor: currentColors[0],
          ),
          PaymentStatusBarDot(
            color: currentColors[1],
          ),
          PaymentStatusBarDot(
            color: currentColors[2],
          ),
          PaymentStatusBarDot(
            color: currentColors[3],
          ),
          ButtonCircularMain(
            onPressed: () {
              paymentStatus = PaymentStatus.payment;
              onPressed!(paymentStatus!);
            },
            buttonSize: 30,
            iconSize: 20,
            icon: Icons.credit_card_outlined,
            iconColor: currentColors[4],
          ),
          PaymentStatusBarDot(
            color: currentColors[5],
          ),
          PaymentStatusBarDot(
            color: currentColors[6],
          ),
          PaymentStatusBarDot(
            color: currentColors[7],
          ),
          ButtonCircularMain(
            onPressed: () {
              paymentStatus = PaymentStatus.summary;
              onPressed!(paymentStatus!);
            },
            buttonSize: 30,
            iconSize: 20,
            icon: Icons.check_circle,
            iconColor: currentColors[8],
          ),
        ],
      ),
    );
  }
}
