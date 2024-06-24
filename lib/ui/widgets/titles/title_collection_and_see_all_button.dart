import 'package:flutter/material.dart';

import 'package:ecommerce_project/utilities/k_text_styles.dart';

class TitleCollectionAndSeeAllButton extends StatelessWidget {
  final String title;
  final String buttonTitle;
  final Function onPressed;

  const TitleCollectionAndSeeAllButton({
    required this.title,
    required this.buttonTitle,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: kTitleHomeScreenCollectionsHelveticaDarkTextStyle,
        ),
        GestureDetector(
          onTap: () {
            onPressed();
          },
          child: Text(
            buttonTitle,
            textAlign: TextAlign.center,
            style: kTitleHomeScreenButtonCollectionsHelveticaDarkTextStyle,
          ),
        ),
      ],
    );
  }
}
