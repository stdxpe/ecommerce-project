import 'package:flutter/material.dart';

import 'package:ecommerce_project/models/product.dart';
import 'package:ecommerce_project/ui/screens/product_details_screen.dart';
import 'package:ecommerce_project/ui/widgets/platform_adaptive_widgets/platform_adaptive_navigator.dart';
import 'package:ecommerce_project/utilities/k_constants.dart';
import 'package:ecommerce_project/utilities/k_text_styles.dart';

class ProductCardVertical extends StatelessWidget {
  final Product product;
  final Function? onPressed;
  final double cardHeight;
  final double cardWidth;
  final String? topText;
  final bool? isBorderElevated;
  final double? elevation;
  final TextStyle? textStylePrimary;
  final TextStyle? textStyleSecondary;

  const ProductCardVertical({
    required this.product,
    this.onPressed,
    required this.cardHeight,
    required this.cardWidth,
    this.topText,
    this.isBorderElevated = false,
    this.elevation = 1.5,
    this.textStylePrimary = kCardTextStylePrimary,
    this.textStyleSecondary = kCardTextStyleSecondary,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onPressed != null) onPressed!();
        PlatformAdaptiveNavigator()
            .push(context, ProductDetailsScreen(product: product));
      },
      child: Center(
        child: Card(
          elevation: isBorderElevated! ? elevation : 0,
          margin: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Constants.kRadiusCardSecondary),
          ),
          clipBehavior: isBorderElevated! ? Clip.hardEdge : Clip.none,
          color: Colors.white,
          child: SizedBox(
            width: cardWidth,
            height: cardHeight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// Image
                Center(
                  child: Card(
                    //TODO if isBorderElevated true, image bottom corners to-be-sharpened, not radius.
                    margin: EdgeInsets.zero,
                    elevation: elevation,
                    clipBehavior: Clip.hardEdge,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        Constants.kRadiusCardSecondary,
                      ),
                    ),
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: Image.asset(
                        height: cardWidth,
                        width: cardWidth,
                        product.mainPhoto,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),

                /// Text & Content
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 1,
                      right: 1,
                      top: 5,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        if (topText != null)
                          Text(
                            topText!,
                            overflow: TextOverflow.ellipsis,
                            softWrap: true,
                            maxLines: 1,
                            style: kCardTextStylePrimary,
                          ),
                        Text(
                          product.title,
                          overflow: TextOverflow.ellipsis,
                          softWrap: true,
                          maxLines: 1,
                          style: kCardTextStylePrimary,
                        ),
                        Text(
                          '\$${product.price.toStringAsFixed(2)}',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: kCardTextStylePrimary,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
