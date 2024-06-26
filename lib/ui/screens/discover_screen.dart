import 'package:flutter/material.dart';

import 'package:ecommerce_project/models/collection.dart';
import 'package:ecommerce_project/models/product.dart';
import 'package:ecommerce_project/ui/widgets/buttons/button_main.dart';
import 'package:ecommerce_project/ui/widgets/cards/collection_card_primary.dart';
import 'package:ecommerce_project/ui/widgets/cards/collection_card_secondary.dart';
import 'package:ecommerce_project/ui/widgets/cards/product_card_horizontal_mini.dart';
import 'package:ecommerce_project/ui/widgets/slivers_and_appbars/app_bar_main_non_sliver.dart';
import 'package:ecommerce_project/ui/widgets/staggered_grid_card_component_left.dart';
import 'package:ecommerce_project/ui/widgets/staggered_grid_card_component_right.dart';
import 'package:ecommerce_project/ui/widgets/titles/title_main.dart';
import 'package:ecommerce_project/utilities/k_color_palette.dart';
import 'package:ecommerce_project/utilities/k_constants.dart';
import 'package:ecommerce_project/utilities/k_strings_en.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      // extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: const AppBarMainNonSliver(
        backgroundColor: Colors.white,
        isSearchButtonIncluded: true,
      ),
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
                      child: TitleMain(title: Strings.kStringDiscoverTitle),
                    ),

                    /// COLLECTION CARD CONTENT
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

                    /// COLLECTION STAGGERED CARD CONTENT
                    Container(
                      margin: const EdgeInsets.only(
                          top: Constants.kPaddingContentAndContent),
                      // color: Colors.red.withOpacity(0.5),
                      child: StaggeredGridCardComponentLeft(
                        collectionTitle: 'Spring Collection',
                        onPressed: () {},
                        paddingHorizontal: Constants.kPaddingHorizontalMain,
                        productList: [
                          Product(
                            title: 'MOS Sale-Fit Shirtasdfasdfsdfgsdfg',
                            price:
                                69.992342345231115111452345234535234523345234,
                            mainPhoto: 'assets/images/pose1.jpg',
                          ),
                          Product(
                            title: 'MOS Sale-Fit Shirt',
                            price: 49,
                            mainPhoto: 'assets/images/pose2.jpg',
                          ),
                          Product(
                            title: 'MOS Sale-Fit Shirt',
                            price: 49.99,
                            mainPhoto: 'assets/images/pose4.jpg',
                          ),
                          Product(
                            title: 'MOS Sale-Fit Shirt',
                            price: 49.99,
                            mainPhoto: 'assets/images/pose5.jpg',
                          ),
                          Product(
                            title: 'MOS Sale-Fit Shirtasdfasdfsdfgsdfg',
                            price:
                                69.992342345231115111452345234535234523345234,
                            mainPhoto: 'assets/images/pose1.jpg',
                          ),
                          Product(
                            title: 'MOS Sale-Fit Shirt',
                            price: 49,
                            mainPhoto: 'assets/images/pose2.jpg',
                          ),
                          Product(
                            title: 'MOS Sale-Fit Shirt',
                            price: 49.99,
                            mainPhoto: 'assets/images/pose3.jpg',
                          ),
                          Product(
                            title: 'MOS Sale-Fit Shirt',
                            price: 49.99,
                            mainPhoto: 'assets/images/pose4.jpg',
                          ),
                          Product(
                            title: 'MOS Sale-Fit Shirt',
                            price: 49.99,
                            mainPhoto: 'assets/images/pose5.jpg',
                          ),
                        ],
                      ),
                    ),

                    /// COLLECTION STAGGERED CARD CONTENT
                    Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      // color: Colors.red.withOpacity(0.5),
                      child: StaggeredGridCardComponentRight(
                        collectionTitle: 'Christmas Collection',
                        onPressed: () {},
                        paddingHorizontal: Constants.kPaddingHorizontalMain,
                        productList: [
                          Product(
                            title: 'MOS Sale-Fit Shirtasdfasdfsdfgsdfg',
                            price:
                                69.992342345231115111452345234535234523345234,
                            mainPhoto: 'assets/images/pose1.jpg',
                          ),
                          Product(
                            title: 'MOS Sale-Fit Shirt',
                            price: 49,
                            mainPhoto: 'assets/images/pose2.jpg',
                          ),
                          Product(
                            title: 'MOS Sale-Fit Shirt',
                            price: 49.99,
                            mainPhoto: 'assets/images/pose4.jpg',
                          ),
                          Product(
                            title: 'MOS Sale-Fit Shirt',
                            price: 49.99,
                            mainPhoto: 'assets/images/pose5.jpg',
                          ),
                          Product(
                            title: 'MOS Sale-Fit Shirtasdfasdfsdfgsdfg',
                            price:
                                69.992342345231115111452345234535234523345234,
                            mainPhoto: 'assets/images/pose1.jpg',
                          ),
                          Product(
                            title: 'MOS Sale-Fit Shirt',
                            price: 49,
                            mainPhoto: 'assets/images/pose2.jpg',
                          ),
                          Product(
                            title: 'MOS Sale-Fit Shirt',
                            price: 49.99,
                            mainPhoto: 'assets/images/pose3.jpg',
                          ),
                          Product(
                            title: 'MOS Sale-Fit Shirt',
                            price: 49.99,
                            mainPhoto: 'assets/images/pose4.jpg',
                          ),
                          Product(
                            title: 'MOS Sale-Fit Shirt',
                            price: 49.99,
                            mainPhoto: 'assets/images/pose5.jpg',
                          ),
                        ],
                      ),
                    ),

                    /// COLLECTION NAME CARD LISTVIEW CONTENT
                    Container(
                      margin: const EdgeInsets.only(bottom: 25),
                      height: 50,
                      width: size.width,
                      // padding: EdgeInsets.symmetric(horizontal: 35 / 2),
                      // color: Colors.red.withOpacity(0.5),
                      child: ListView.builder(
                        clipBehavior: Clip.none,
                        itemCount: 7,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return ButtonMain(
                            onPressed: () {},
                            width: 175,
                            // height: 35,
                            paddingVertical: 0,
                            paddingHorizontal: 5,
                            textColor: Colors.white,
                            buttonColor: ColorPalette.kColorDarkButton,
                            text: 'Collection ${index.toString()}',
                          );
                        },
                      ),
                    ),

                    /// COLLECTION CARD CONTENT
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

                    /// COLLECTION MINI CARD LISTVIEW CONTENT
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
                              mainPhoto: 'assets/images/pose5.jpg',
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
