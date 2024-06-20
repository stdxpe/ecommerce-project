import 'package:flutter/material.dart';

import 'package:ecommerce_project/models/collection.dart';
import 'package:ecommerce_project/utilities/k_constants.dart';
import 'package:ecommerce_project/utilities/k_text_styles.dart';

class CollectionCardSecondary extends StatelessWidget {
  final Collection collection;
  final bool? isRadiusCorners;
  final double cardHeight;
  final double cardWidth;
  final String? bottomText;
  final Widget? bottomContent;
  final double? elevation;
  final TextStyle? textStylePrimary;
  final TextStyle? textStyleSecondary;

  const CollectionCardSecondary({
    required this.collection,
    required this.cardHeight,
    required this.cardWidth,
    this.isRadiusCorners = true,
    this.bottomText,
    this.bottomContent,
    this.elevation = 1.5,
    this.textStylePrimary = kCollectionCardTextStylePrimary,
    this.textStyleSecondary = kCollectionCardTextStyleSecondary,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: elevation,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            Constants.kRadiusCardPrimary,
          ),
        ),
        clipBehavior: Clip.hardEdge,
        child: Stack(
          children: [
            Image.asset(
              height: cardHeight,
              width: cardWidth,
              collection.imageUrl,
              fit: BoxFit.cover,
            ),
            Container(
              height: cardHeight,
              width: cardWidth,
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 10,
              ),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      collection.title,
                      overflow: TextOverflow.ellipsis,
                      softWrap: true,
                      maxLines: 3,
                      textAlign: TextAlign.center,
                      style: textStylePrimary?.copyWith(fontSize: 25),
                    ),
                    // SizedBox(height: cardHeight * 0.05),
                    Text(
                      collection.subtitle,
                      overflow: TextOverflow.ellipsis,
                      softWrap: true,
                      maxLines: 2,
                      style: textStyleSecondary?.copyWith(
                          shadows: [kBoxShadowLightText], fontSize: 60),
                    ),
                  ],
                ),
              ),
              // Column(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   mainAxisSize: MainAxisSize.min,
              //   children: [
              //     if (collection.description != null)
              //       Text(
              //         bottomText!,
              //         overflow: TextOverflow.ellipsis,
              //         maxLines: 1,
              //         style: kCardTextStyleSecondary,
              //       ),
              //     if (bottomContent != null) bottomContent!,
              //   ],
              // )
            ),
          ],
        ),
      ),
    );
  }
}
