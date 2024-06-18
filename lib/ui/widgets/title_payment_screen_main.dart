import 'package:flutter/material.dart';

import 'package:ecommerce_project/ui/widgets/title_main.dart';
import 'package:ecommerce_project/ui/widgets/title_payment_step.dart';
import 'package:ecommerce_project/utilities/k_constants.dart';

class TitlePaymentScreenMain extends StatelessWidget {
  final String title;
  final int stepNumber;

  const TitlePaymentScreenMain({
    required this.title,
    required this.stepNumber,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.only(
        top: Constants.kPaddingMainTitleAndContent,
        bottom: Constants.kPaddingMainTitleAndContent,
      ),
      // color: Colors.amber.withOpacity(0.5),
      width: size.width,
      child: Column(
        children: [
          TitlePaymentStep(title: 'Step', stepNumber: stepNumber),
          TitleMain(title: title),
        ],
      ),
    );
  }
}
