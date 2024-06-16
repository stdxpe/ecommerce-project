import 'package:flutter/material.dart';

import 'package:ecommerce_project/utilities/k_text_styles.dart';

class TitleShoppingCardBottomSheet extends StatelessWidget {
  final String leftSideText;
  final String rightSideText;

  const TitleShoppingCardBottomSheet({
    required this.leftSideText,
    required this.rightSideText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          leftSideText,
          textAlign: TextAlign.center,
          style: kShoppingCartBottomCardTextStylePrimary,
        ),
        Text(
          rightSideText,
          textAlign: TextAlign.center,
          style: kShoppingCartBottomCardTextStyleSecondary,
        ),
      ],
    );
  }
}
