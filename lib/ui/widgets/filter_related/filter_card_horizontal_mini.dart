import 'package:flutter/material.dart';

import 'package:ecommerce_project/utilities/k_color_palette.dart';
import 'package:ecommerce_project/utilities/k_constants.dart';
import 'package:ecommerce_project/utilities/k_text_styles.dart';

class FilterCardHorizontalMini extends StatelessWidget {
  final String text;
  final bool? isSelected;
  final double cardHeight;
  final double cardWidth;
  final double? paddingHorizontal;
  final Color? cardColor;
  final TextStyle? textStylePrimary;
  final TextStyle? textStyleSecondary;

  const FilterCardHorizontalMini({
    required this.text,
    this.isSelected = false,
    required this.cardHeight,
    required this.cardWidth,
    this.paddingHorizontal = Constants.kPaddingHorizontalMain,
    this.cardColor = ColorPalette.kColorModalBottomSheet,
    this.textStylePrimary = kCardTextStylePrimary,
    this.textStyleSecondary = kCardTextStyleSecondary,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: isSelected! ? 3 : 1.5,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Constants.kRadiusCardSecondary),
        ),
        clipBehavior: Clip.hardEdge,
        color: cardColor,
        child: SizedBox(
          width: cardWidth - (paddingHorizontal! * 2),
          height: cardHeight,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              /// Text & Content
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 2,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        flex: 4,
                        child: SizedBox(
                          // color: Colors.green.withOpacity(0.5),
                          child: Text(
                            text,
                            overflow: TextOverflow.ellipsis,
                            softWrap: true,
                            maxLines: 1,
                            style: kReviewScreenProductCardTextStyle,
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          // color: Colors.green.withOpacity(0.5),
                          child: Icon(
                            Icons.check,
                            color: (isSelected!)
                                ? Colors.black87
                                : Colors.transparent,
                            size: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
