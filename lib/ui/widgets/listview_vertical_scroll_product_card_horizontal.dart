import 'package:ecommerce_project/ui/widgets/button_close_icon.dart';
import 'package:ecommerce_project/ui/widgets/button_main.dart';
import 'package:ecommerce_project/utilities/k_text_styles.dart';
import 'package:flutter/material.dart';

import 'package:ecommerce_project/models/product.dart';
import 'package:ecommerce_project/ui/widgets/product_card_horizontal.dart';
import 'package:ecommerce_project/utilities/k_constants.dart';

class ListviewVerticalScrollProductCardHorizontal extends StatelessWidget {
  final String collectionTitle;
  final List<Product> productList;
  final double? cardHeight;
  final double? cardWidth;
  final double? elevation;
  final bool? isBorderElevated;
  final String? bottomText;
  final double? paddingHorizontalMain;
  final double? paddingBetweenElementsMain;
  final TextStyle? textStylePrimary;
  final TextStyle? textStyleSecondary;

  const ListviewVerticalScrollProductCardHorizontal({
    required this.collectionTitle,
    required this.productList,
    this.cardHeight = 100,
    this.cardWidth = 200,
    this.elevation = 1.5,
    this.isBorderElevated = true,
    this.bottomText,
    this.paddingHorizontalMain = Constants.kPaddingHorizontalMain,
    this.paddingBetweenElementsMain =
        Constants.kPaddingWishlistScreenBetweenElements,
    this.textStylePrimary = kWishlistItemsTextStylePrimary,
    this.textStyleSecondary = kWishlistItemsTextStyleSecondary,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.only(
        left: paddingHorizontalMain!,
        right: paddingHorizontalMain!,
        bottom: Constants.kPaddingAppBottom,
      ),
      sliver: SliverList.builder(
        itemCount: productList.length,
        itemBuilder: (context, index) => Container(
          margin: EdgeInsets.only(
            bottom: paddingBetweenElementsMain!,
          ),
          child: Stack(
            clipBehavior: Clip.hardEdge,
            children: [
              ProductCardHorizontal(
                product: Product(
                  title: productList[index].title,
                  price: productList[index].price,
                  imageUrl: productList[index].imageUrl,
                ),
                cardHeight: cardHeight!,
                cardWidth: cardWidth!,
                elevation: elevation,
                isBorderElevated: isBorderElevated,
                textStylePrimary: textStylePrimary!,
                textStyleSecondary: textStyleSecondary!,
                bottomText: bottomText ?? '',
              ),
              Positioned.fill(
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ButtonCloseIcon(
                      onPressed: () {},
                      buttonColor: Colors.black12,
                    ),
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
