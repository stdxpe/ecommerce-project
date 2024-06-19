import 'package:ecommerce_project/utilities/k_text_styles.dart';
import 'package:flutter/material.dart';

class TitlePaymentSummaryChange extends StatelessWidget {
  final String title;
  final String subtext;
  final TextStyle? subTextStyle;
  final String? textButtonText;
  final Function onPressed;

  const TitlePaymentSummaryChange({
    required this.title,
    required this.subtext,
    this.subTextStyle = kPaymentScreenSummarySubtitleTextStyle,
    this.textButtonText = 'Change',
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: kPaymentScreenSummaryTitleTextStyle,
        ),
        Text(
          subtext,
          style: subTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            GestureDetector(
              onTap: () {
                onPressed();
              },
              child: Text(
                textButtonText!,
                style: kPaymentScreenSummaryButtonTextStyle,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
