import 'package:flutter/material.dart';

import 'package:ecommerce_project/ui/widgets/button_close_icon.dart';
import 'package:ecommerce_project/ui/widgets/button_main.dart';
import 'package:ecommerce_project/utilities/k_text_styles.dart';

class DialogPopupCardStack extends StatelessWidget {
  // final Product product;

  final String title;
  final String subtitle;
  final String imageUrl;
  final String buttonText;
  final double cardHeight;
  final double cardWidth;
  final double? elevation;
  final TextStyle? textStylePrimary;
  final TextStyle? textStyleSecondary;

  const DialogPopupCardStack({
    required this.title,
    required this.subtitle,
    required this.imageUrl,
    required this.buttonText,
    required this.cardHeight,
    required this.cardWidth,
    this.elevation = 1.5,
    this.textStylePrimary = kDialogPopupCardTextStylePrimary,
    this.textStyleSecondary = kDialogPopupCardTextStyleSecondary,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          height: cardHeight,
          width: cardWidth,
          imageUrl,
          fit: BoxFit.cover,
        ),
        SizedBox(
          height: cardHeight,
          width: cardWidth,
          // color: Colors.red.withOpacity(0.5),
          // padding: const EdgeInsets.symmetric(
          //   horizontal: 10,
          //   vertical: 10,
          // ),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  title,
                  overflow: TextOverflow.ellipsis,
                  softWrap: true,
                  maxLines: 3,
                  textAlign: TextAlign.center,
                  style: textStylePrimary,
                ),
                SizedBox(height: cardHeight * 0.05),
                Text(
                  subtitle,
                  overflow: TextOverflow.ellipsis,
                  softWrap: true,
                  maxLines: 2,
                  style: textStyleSecondary,
                ),
              ],
            ),
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 25,
              ),
              child: ButtonMain(
                onPressed: () {},
                text: buttonText,
                width: cardWidth,
                height: 50,
                paddingHorizontal: 0,
                paddingVertical: 0,
              ),
            ),
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.topRight,
            child: Container(
              margin: const EdgeInsets.all(10),
              child: ButtonCloseIcon(
                onPressed: () {},
                iconSize: 17,
                buttonSize: 28,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
