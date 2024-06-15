import 'package:ecommerce_project/utilities/k_constants.dart';
import 'package:ecommerce_project/utilities/k_strings_en.dart';
import 'package:flutter/material.dart';

import 'package:ecommerce_project/utilities/k_text_styles.dart';

class TitleNumberOfItemsFound extends StatelessWidget {
  final String title;
  final int itemCount;

  const TitleNumberOfItemsFound({
    required this.title,
    required this.itemCount,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          '$itemCount $title',
          textAlign: TextAlign.center,
          style: kItemsFoundTextStyle,
        ),
      ],
    );
  }
}
