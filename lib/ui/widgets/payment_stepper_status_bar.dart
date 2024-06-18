import 'package:flutter/material.dart';

import 'package:ecommerce_project/models/enums.dart';
import 'package:ecommerce_project/ui/widgets/button_circular_main.dart';
import 'package:ecommerce_project/ui/widgets/payment_status_bar_dot.dart';
import 'package:ecommerce_project/utilities/k_constants.dart';

class PaymentStepperStatusBar extends StatefulWidget {
  late PaymentStatus? paymentStatus;
  final Color? activeColor;
  final Color? passiveColor;

  PaymentStepperStatusBar({
    this.paymentStatus = PaymentStatus.shipping,
    this.activeColor = Colors.black,
    this.passiveColor = Colors.black26,
    super.key,
  });

  @override
  State<PaymentStepperStatusBar> createState() =>
      _PaymentStepperStatusBarState();
}

class _PaymentStepperStatusBarState extends State<PaymentStepperStatusBar> {
  late PaymentStatus paymentStatus;

  @override
  void initState() {
    paymentStatus = widget.paymentStatus!;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    /// TODO: Riverpod provider awaiting for these.

    List<Color> currentColors = [];
    currentColors.clear();
    if (paymentStatus == PaymentStatus.shipping) {
      currentColors.clear();
      currentColors = [
        widget.activeColor!,
        widget.passiveColor!,
        widget.passiveColor!,
        widget.passiveColor!,
        widget.passiveColor!,
        widget.passiveColor!,
        widget.passiveColor!,
        widget.passiveColor!,
        widget.passiveColor!,
      ];
    } else if (paymentStatus == PaymentStatus.payment) {
      currentColors.clear();
      currentColors = [
        widget.activeColor!,
        widget.activeColor!,
        widget.activeColor!,
        widget.activeColor!,
        widget.activeColor!,
        widget.passiveColor!,
        widget.passiveColor!,
        widget.passiveColor!,
        widget.passiveColor!,
      ];
    } else if (paymentStatus == PaymentStatus.summary) {
      currentColors.clear();
      currentColors = [
        widget.activeColor!,
        widget.activeColor!,
        widget.activeColor!,
        widget.activeColor!,
        widget.activeColor!,
        widget.activeColor!,
        widget.activeColor!,
        widget.activeColor!,
        widget.activeColor!,
      ];
    } else if (paymentStatus == PaymentStatus.success) {
      currentColors.clear();
      currentColors = [
        widget.activeColor!,
        widget.activeColor!,
        widget.activeColor!,
        widget.activeColor!,
        widget.activeColor!,
        widget.activeColor!,
        widget.activeColor!,
        widget.activeColor!,
        widget.activeColor!,
      ];
    } else if (paymentStatus == PaymentStatus.failed) {
      currentColors.clear();
      currentColors = [
        widget.passiveColor!,
        widget.passiveColor!,
        widget.passiveColor!,
        widget.passiveColor!,
        widget.passiveColor!,
        widget.passiveColor!,
        widget.passiveColor!,
        widget.passiveColor!,
        widget.passiveColor!,
      ];
    }

    return Container(
      // color: Colors.green.withOpacity(0.5),
      padding: const EdgeInsets.only(
        left: Constants.kPaddingHorizontalMain * 2,
        right: Constants.kPaddingHorizontalMain * 2,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonCircularMain(
            onPressed: () {
              setState(() {
                paymentStatus = PaymentStatus.shipping;
              });
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
              setState(() {
                paymentStatus = PaymentStatus.payment;
              });
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
              setState(() {
                paymentStatus = PaymentStatus.summary;
              });
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
