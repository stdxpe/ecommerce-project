import 'package:flutter/material.dart';

import 'package:ecommerce_project/models/collection.dart';
import 'package:ecommerce_project/models/product.dart';
import 'package:ecommerce_project/ui/widgets/cards/collection_card_primary.dart';
import 'package:ecommerce_project/ui/widgets/cards/collection_card_secondary.dart';
import 'package:ecommerce_project/ui/widgets/cards/product_card_horizontal_mini.dart';
import 'package:ecommerce_project/ui/widgets/slivers_and_appbars/app_bar_standart_back_search_button.dart';
import 'package:ecommerce_project/ui/widgets/staggered_grid_card_component2.dart';
import 'package:ecommerce_project/ui/widgets/titles/title_main.dart';
import 'package:ecommerce_project/utilities/k_constants.dart';
import 'package:ecommerce_project/utilities/k_strings_en.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      // extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar:
          const AppBarStandartBackSearchButton(backgroundColor: Colors.white),
      body: SizedBox(
        // color: Colors.red.withOpacity(0.5),
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
                    const Padding(
                      padding: EdgeInsets.only(
                        left: Constants.kPaddingHorizontalMain,
                        right: Constants.kPaddingHorizontalMain,
                        top: Constants.kPaddingAppTopAndMainTitle,
                        bottom: Constants.kPaddingMainTitleAndContent,
                        // bottom: Constants.kPaddingItemsCountAndContent,
                      ),
                      child: TitleMain(title: Strings.kStringExploreTitle),
                    ),

                    /// CONTENT
                    CollectionCardPrimary(
                      isRadiusCorners: false,
                      cardWidth: size.width,
                      cardHeight: size.width,
                      collection: Collection(
                        id: '1',
                        title: 'Designer Collection',
                        subtitle: '',
                        description:
                            '60+ Designer Brands\nStuff your shoes for \$20',
                        imageUrl: 'assets/images/pose5.jpg',
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 50),
                      height: size.height * 0.32,
                      width: size.width,
                      // padding: EdgeInsets.symmetric(horizontal: 35 / 2),
                      // color: Colors.red.withOpacity(0.5),
                      child: ListView.builder(
                          itemCount: 7,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5.0),
                              child: CollectionCardSecondary(
                                isRadiusCorners: false,
                                cardWidth: size.width * 0.4,
                                cardHeight: size.height * 0.3,
                                collection: Collection(
                                  id: '1',
                                  title: 'Designer Collection',
                                  subtitle: '',
                                  description:
                                      '60+ Designer Brands\nStuff your shoes for \$20',
                                  imageUrl: 'assets/images/pose$index.jpg',
                                ),
                              ),
                            );
                          }),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 50),
                      // color: Colors.red.withOpacity(0.5),
                      child: StaggeredGridCardComponent2(
                        width: size.width,
                        height: size.width * (2 / 4),
                        widthItemCount: 4,
                        heightItemCount: 2,
                      ),
                    ),
                    CollectionCardPrimary(
                      isRadiusCorners: false,
                      cardWidth: size.width,
                      cardHeight: size.width,
                      collection: Collection(
                        id: '0',
                        title: 'Spring Collection',
                        subtitle: '30% OFF',
                        description: 'For Selected Spring Style',
                        imageUrl: 'assets/images/pose0.jpg',
                      ),
                    ),
                    ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      clipBehavior: Clip.none,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: Constants.kPaddingHorizontalMain,
                            vertical: Constants.kPaddingBetweenElementsMain,
                          ),
                          child: ProductCardHorizontalMini(
                            isBorderElevated: true,
                            cardHeight: 75,
                            cardWidth: size.width,
                            // elevation: elevation,
                            product: Product(
                              title: 'MOS Sale-Fit Shirt',
                              price: 49.99,
                              imageUrl: 'assets/images/pose5.jpg',
                            ),
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
      ),
    );
  }
}
