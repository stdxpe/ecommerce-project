import 'package:flutter/material.dart';

import 'package:ecommerce_project/models/product.dart';
import 'package:ecommerce_project/ui/screens/product_details_screen.dart';
import 'package:ecommerce_project/ui/widgets/platform_adaptive_widgets/platform_adaptive_navigator.dart';
import 'package:ecommerce_project/utilities/k_constants.dart';
import 'package:ecommerce_project/utilities/k_text_styles.dart';

class ProductCardHorizontalMini extends StatelessWidget {
  final Product product;
  final Function? onPressed;
  final double cardHeight;
  final double cardWidth;
  final Color? cardColor;
  final bool? isBorderElevated;
  final double? elevation;
  final TextStyle? textStylePrimary;
  final TextStyle? textStyleSecondary;

  const ProductCardHorizontalMini({
    required this.product,
    this.onPressed,
    required this.cardHeight,
    required this.cardWidth,
    this.cardColor = Colors.white,
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
          color: cardColor,
          child: SizedBox(
            width: cardWidth,
            height: cardHeight,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                /// Image
                Center(
                  child: Card(
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
                        height: cardHeight,
                        width: cardHeight,
                        product.imageUrl,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),

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
                              product.title,
                              overflow: TextOverflow.ellipsis,
                              softWrap: true,
                              maxLines: 2,
                              style: kReviewScreenProductCardTextStyle,
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                              // color: Colors.green.withOpacity(0.5),
                              ),
                        ),
                        Flexible(
                          flex: 2,
                          child: SizedBox(
                            // color: Colors.green.withOpacity(0.5),
                            child: Text(
                              '\$${product.price.toStringAsFixed(2)}',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: kReviewScreenProductCardTextStyle,
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
      ),
    );
  }
}