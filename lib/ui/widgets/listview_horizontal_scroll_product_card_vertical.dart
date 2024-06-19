import 'package:flutter/material.dart';

import 'package:ecommerce_project/ui/widgets/buttons/button_add_to_wishlist.dart';
import 'package:ecommerce_project/utilities/k_strings_en.dart';
import 'package:ecommerce_project/ui/widgets/cards/product_card_vertical.dart';
import 'package:ecommerce_project/models/product.dart';
import 'package:ecommerce_project/ui/widgets/buttons/button_collection_title_and_show_all.dart';
import 'package:ecommerce_project/utilities/k_constants.dart';

class ListviewHorizontalScrollProductCardVertical extends StatelessWidget {
  final String collectionTitle;
  final List<Product> productList;
  final double? cardHeight;
  final double? cardWidth;
  final double? elevation;
  final bool? isBorderElevated;
  final double? paddingHorizontalMain;
  final double? paddingBetweenElementsMain;

  const ListviewHorizontalScrollProductCardVertical({
    required this.collectionTitle,
    required this.productList,
    this.cardHeight = 150,
    this.cardWidth = 100,
    this.elevation = 1.5,
    this.isBorderElevated = true,
    this.paddingHorizontalMain = Constants.kPaddingHorizontalMain -
        Constants.kPaddingBetweenElementsMain,
    this.paddingBetweenElementsMain = Constants.kPaddingBetweenElementsMain,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        /// Collection Title
        Padding(
          padding: EdgeInsets.only(
            left: paddingHorizontalMain! + paddingBetweenElementsMain!,
            right: paddingHorizontalMain! + paddingBetweenElementsMain!,
            bottom: Constants.kPaddingTitleAndContent,
          ),
          child: ButtonCollectionTitleAndShowAll(
            title: collectionTitle,
            buttonTitle: Strings.kStringButtonCollectionTitle,
            onPressed: () {},
          ),
        ),

        /// Listview
        SizedBox(
          height: cardHeight!,
          width: size.width,
          child: ListView.builder(
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(
              horizontal: paddingHorizontalMain!,
            ),
            scrollDirection: Axis.horizontal,
            clipBehavior: Clip.none,
            itemCount: productList.length,
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.symmetric(
                horizontal: paddingBetweenElementsMain!,
                vertical: 0.0,
              ),
              child: Stack(
                children: [
                  ProductCardVertical(
                    isBorderElevated: isBorderElevated,
                    cardHeight: cardHeight!,
                    cardWidth: cardWidth!,
                    elevation: elevation,
                    topText: 'MINX',
                    product: productList[index],
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: ButtonAddToWishlist(
                          onPressed: () {},
                          buttonSize: cardWidth! * 0.19,
                          iconSize: cardWidth! * 0.12,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
