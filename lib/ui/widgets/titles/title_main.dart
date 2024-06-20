import 'package:flutter/material.dart';

import 'package:ecommerce_project/utilities/k_text_styles.dart';

class TitleMain extends StatelessWidget {
  final String title;
  final IconData? optionalRightIcon;
  final double? iconSize;
  final Color? iconColor;
  final Function? onPressed;

  const TitleMain({
    required this.title,
    this.optionalRightIcon,
    this.iconSize = 25,
    this.iconColor = Colors.black,
    this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      // crossAxisAlignment: CrossAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,

      children: [
        Flexible(
          flex: 8,
          child: Text(
            title,
            textAlign: TextAlign.start,
            style: kTitleMainTextStyle,
          ),
        ),
        if (optionalRightIcon != null)
          // Flexible(
          //   fit: FlexFit.loose,
          //   flex: 2,
          //   child: IconButton(
          //     // alignment: Alignment.centerRight,
          //     onPressed: () {
          //       if (onPressed != null) onPressed!();
          //     },
          //     icon: Icon(
          //       optionalRightIcon,
          //       color: iconColor,
          //       size: iconSize,
          //     ),
          //   ),
          // ),
          Flexible(
            fit: FlexFit.loose,
            flex: 2,
            child: GestureDetector(
              onTap: () {
                if (onPressed != null) onPressed!();
              },
              child: Icon(
                optionalRightIcon,
                color: iconColor,
                size: iconSize,
              ),
            ),
          ),
      ],
    );
  }
}
