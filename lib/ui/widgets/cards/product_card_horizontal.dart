import 'package:flutter/material.dart';

import 'package:ecommerce_project/models/product.dart';
import 'package:ecommerce_project/ui/screens/product_details_screen.dart';
import 'package:ecommerce_project/ui/widgets/platform_adaptive_widgets/platform_adaptive_navigator.dart';
import 'package:ecommerce_project/utilities/k_constants.dart';
import 'package:ecommerce_project/utilities/k_text_styles.dart';

class ProductCardHorizontal extends StatelessWidget {
  final Product product;
  final Function? onPressed;
  final double cardHeight;
  final double cardWidth;
  final String? bottomText;
  final Widget? bottomContent;
  final bool? isBorderElevated;
  final double? elevation;
  final TextStyle? textStylePrimary;
  final TextStyle? textStyleSecondary;

  const ProductCardHorizontal({
    required this.product,
    this.onPressed,
    required this.cardHeight,
    required this.cardWidth,
    this.bottomText,
    this.bottomContent,
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
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        product.mainPhoto,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),

                /// Text & Content
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 7.5,
                      vertical: 2,
                    ),
                    child: Column(
                      mainAxisAlignment:
                          (bottomText != null || bottomContent != null)
                              ? MainAxisAlignment.spaceBetween
                              : MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              product.title,
                              overflow: TextOverflow.ellipsis,
                              softWrap: true,
                              maxLines: 1,
                              style: textStylePrimary,
                            ),
                            Text(
                              '\$${product.price.toStringAsFixed(2)}',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: textStylePrimary,
                            ),
                          ],
                        ),
                        if (bottomText != null)
                          Text(
                            bottomText!,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: textStyleSecondary,
                          ),
                        if (bottomContent != null) bottomContent!,
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
