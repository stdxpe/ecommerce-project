import 'package:flutter/material.dart';

import 'package:ecommerce_project/models/product.dart';
import 'package:ecommerce_project/ui/widgets/cards/product_card_horizontal_mini.dart';
import 'package:ecommerce_project/ui/widgets/titles/title_main.dart';
import 'package:ecommerce_project/ui/widgets/titles/title_number_of_items_found.dart';
import 'package:ecommerce_project/utilities/k_constants.dart';
import 'package:ecommerce_project/utilities/k_strings_en.dart';

class SearchScreen extends StatelessWidget {
  final String query;
  const SearchScreen({
    required this.query,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height,
      width: size.width,
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              physics: const ClampingScrollPhysics(),
              child: Column(
                children: [
                  /// TITLE
                  Padding(
                    padding: const EdgeInsets.only(
                      left: Constants.kPaddingHorizontalMain,
                      right: Constants.kPaddingHorizontalMain,
                      top: Constants.kPaddingAppTopAndMainTitle,
                      bottom: Constants.kPaddingMainTitleAndContent,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TitleMain(
                          title: (query.isEmpty)
                              ? Strings.kStringSearchTitle
                              : query,
                          optionalRightIcon: Icons.tune,
                          iconSize: 22.5,
                          onPressed: () {},
                        ),
                        const TitleNumberOfItemsFound(
                          title: Strings.kStringItemsFound,
                          itemCount: 3,
                        ),
                      ],
                    ),
                  ),
                  ListView.builder(
                    // padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    clipBehavior: Clip.none,
                    physics: const NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.only(
                      left: Constants.kPaddingHorizontalMain,
                      right: Constants.kPaddingHorizontalMain,
                    ),
                    itemCount: 14,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(
                            bottom: Constants.kPaddingBetweenElementsMain * 2),
                        child: ProductCardHorizontalMini(
                          onPressed: () {
                            // close(context, 'result');
                            print('search closed executed');
                          },
                          product: Product(
                            title: 'MOS Sale-Fit Shirt Shirtasdfasdfsdfgsdfg',
                            price: 133.99,
                            imageUrl: 'assets/images/pose5.jpg',
                          ),
                          cardColor: Colors.white.withOpacity(0.9),
                          cardHeight: 75,
                          cardWidth: size.width,
                          isBorderElevated: true,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
