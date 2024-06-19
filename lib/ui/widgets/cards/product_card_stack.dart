import 'package:flutter/material.dart';

import 'package:ecommerce_project/utilities/k_constants.dart';
import 'package:ecommerce_project/utilities/k_text_styles.dart';
import 'package:ecommerce_project/models/product.dart';

class ProductCardStack extends StatelessWidget {
  final Product product;
  final double cardHeight;
  final double cardWidth;
  final String? bottomText;
  final Widget? bottomContent;
  final double? elevation;
  final TextStyle? textStylePrimary;
  final TextStyle? textStyleSecondary;

  const ProductCardStack({
    required this.product,
    required this.cardHeight,
    required this.cardWidth,
    this.bottomText,
    this.bottomContent,
    this.elevation = 1.5,
    this.textStylePrimary = kCardTextStylePrimary,
    this.textStyleSecondary = kCardTextStyleSecondary,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: elevation,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Constants.kRadiusCardSecondary),
        ),
        clipBehavior: Clip.hardEdge,
        child: Stack(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Image.asset(
                height: cardHeight,
                width: cardWidth,
                product.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: cardHeight,
              width: cardWidth,
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.title,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: textStylePrimary ??
                            kProductCollectionPrimaryHelveticaDarkTextStyle,
                      ),
                      Text(
                        product.title,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: textStylePrimary ??
                            kProductCollectionPrimaryHelveticaDarkTextStyle,
                      ),
                      Text(
                        '\$${product.price.toStringAsFixed(2)}',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: textStylePrimary ??
                            kProductCollectionPrimaryHelveticaDarkTextStyle,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (bottomText != null)
                        Text(
                          bottomText!,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: kCardTextStyleSecondary,
                        ),
                      if (bottomContent != null) bottomContent!,
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
