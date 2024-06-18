import 'package:flutter/material.dart';

import 'package:ecommerce_project/utilities/k_text_styles.dart';

class TitlePaymentStep extends StatelessWidget {
  final String title;
  final int stepNumber;

  const TitlePaymentStep({
    required this.title,
    required this.stepNumber,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          '$title ${stepNumber + 1}',
          textAlign: TextAlign.center,
          style: kItemsFoundTextStyle,
        ),
      ],
    );
  }
}
