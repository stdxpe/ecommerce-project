import 'package:flutter/material.dart';

import 'package:ecommerce_project/ui/screens/details_screen.dart';
import 'package:ecommerce_project/ui/widgets/platform_adaptive_widgets/platform_adaptive_navigator.dart';
import 'package:ecommerce_project/utilities/k_strings_en.dart';
import 'package:ecommerce_project/ui/widgets/product_card_stack.dart';
import 'package:ecommerce_project/models/product.dart';
import 'package:ecommerce_project/ui/widgets/button_collection_title_and_show_all.dart';
import 'package:ecommerce_project/utilities/k_constants.dart';

class ListviewHorizontalScrollProductCardStack extends StatelessWidget {
  final String collectionTitle;
  final List<Product> productList;
  final double? cardHeight;
  final double? cardWidth;
  final double? elevation;
  final double? paddingHorizontalMain;
  final double? paddingBetweenElementsMain;

  const ListviewHorizontalScrollProductCardStack({
    required this.collectionTitle,
    required this.productList,
    this.cardHeight = 100,
    this.cardWidth = 100,
    this.elevation = 1.5,
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
            clipBehavior: Clip.none,
            scrollDirection: Axis.horizontal,
            itemCount: productList.length,
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.symmetric(
                horizontal: paddingBetweenElementsMain!,
              ),
              child: GestureDetector(
                onTap: () {
                  PlatformAdaptiveNavigator().push(
                    context,
                    DetailsScreen(
                      product: productList[index],
                    ),
                  );
                },
                child: ProductCardStack(
                  cardHeight: cardHeight!,
                  cardWidth: cardWidth!,
                  elevation: elevation,
                  bottomText: 'Size: M  |  Color: Grey',
                  // bottomContent: Text('Go to Collection'),
                  product: productList[index],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
