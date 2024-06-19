import 'package:flutter/material.dart';

import 'package:ecommerce_project/utilities/k_strings_en.dart';
import 'package:ecommerce_project/models/product.dart';
import 'package:ecommerce_project/ui/widgets/buttons/button_collection_title_and_show_all.dart';
import 'package:ecommerce_project/ui/widgets/cards/product_card_horizontal.dart';
import 'package:ecommerce_project/utilities/k_constants.dart';

class ListviewHorizontalScrollProductCardHorizontal extends StatelessWidget {
  final String collectionTitle;
  final List<Product> productList;
  final double? cardHeight;
  final double? cardWidth;
  final double? elevation;
  final bool? isBorderElevated;
  final double? paddingHorizontalMain;
  final double? paddingBetweenElementsMain;

  const ListviewHorizontalScrollProductCardHorizontal({
    required this.collectionTitle,
    required this.productList,
    this.cardHeight = 50,
    this.cardWidth = 175,
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
            padding: EdgeInsets.symmetric(
              horizontal: paddingHorizontalMain!,
            ),
            itemExtent: cardWidth!,
            clipBehavior: Clip.none,
            scrollDirection: Axis.horizontal,
            itemCount: productList.length,
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.symmetric(
                horizontal: paddingBetweenElementsMain!,
                vertical: 0.0,
              ),
              child: ProductCardHorizontal(
                isBorderElevated: isBorderElevated,
                cardHeight: cardHeight!,
                cardWidth: cardWidth!,
                elevation: elevation,
                bottomText: 'Size: M  |  Color: Grey',
                product: productList[index],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
