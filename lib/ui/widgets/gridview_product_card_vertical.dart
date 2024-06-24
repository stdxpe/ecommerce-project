import 'package:flutter/material.dart';

import 'package:ecommerce_project/ui/widgets/buttons/button_add_to_wishlist.dart';
import 'package:ecommerce_project/models/product.dart';
import 'package:ecommerce_project/ui/widgets/cards/product_card_vertical.dart';
import 'package:ecommerce_project/utilities/k_constants.dart';

class GridviewProductCardVertical extends StatelessWidget {
  final List<Product> productList;
  final double? cardHeight;
  final double? cardWidth;
  final double? elevation;
  final bool? isBorderElevated;
  final double? paddingHorizontalMain;
  final double? paddingBetweenElementsMain;
  final double paddingAppBottom;

  const GridviewProductCardVertical({
    required this.productList,
    this.cardHeight = 150,
    this.cardWidth = 100,
    this.elevation = 1.5,
    this.isBorderElevated = true,
    this.paddingHorizontalMain = Constants.kPaddingHorizontalMain,
    this.paddingBetweenElementsMain = Constants.kPaddingBetweenElementsMain,
    this.paddingAppBottom = Constants.kPaddingAppBottom,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.only(
        left: paddingHorizontalMain!,
        right: paddingHorizontalMain!,
        bottom: paddingAppBottom,
      ),
      sliver: SliverGrid.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: cardWidth!,
          mainAxisExtent: cardHeight!,
          mainAxisSpacing: paddingBetweenElementsMain! * 2,
          crossAxisSpacing: paddingBetweenElementsMain! * 2,
          childAspectRatio: cardHeight! / cardWidth!,
        ),
        itemCount: productList.length,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              ProductCardVertical(
                isBorderElevated: isBorderElevated,
                cardHeight: cardHeight!,
                cardWidth: cardWidth!,
                elevation: elevation,
                topText: 'MINX',
                product: productList[index],
              ),
              // Positioned.fill(
              //   child: Align(
              //     alignment: Alignment.topRight,
              //     child: Padding(
              //       padding: const EdgeInsets.all(5.0),
              //       child: ButtonAddToWishlist(
              //         onPressed: () {},
              //         // buttonSize: 30,
              //         // iconSize: 20,
              //       ),
              //     ),
              //   ),
              // ),
            ],
          );
        },
      ),
    );
  }
}
