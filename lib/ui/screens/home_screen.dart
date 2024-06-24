import 'package:flutter/material.dart';

import 'package:ecommerce_project/models/product.dart';
import 'package:ecommerce_project/ui/widgets/titles/title_collection_and_see_all_button.dart';
import 'package:ecommerce_project/ui/widgets/carousel_sliders/carousel_integrated.dart';
import 'package:ecommerce_project/ui/widgets/dialog_popups/dialog_popup_card_home_screen.dart';
import 'package:ecommerce_project/ui/widgets/dialog_popups/dialog_popup_widget_main.dart';
import 'package:ecommerce_project/ui/widgets/gridview_product_card_vertical.dart';
import 'package:ecommerce_project/ui/widgets/listview_horizontal_scroll_product_card_horizontal.dart';
import 'package:ecommerce_project/ui/widgets/listview_horizontal_scroll_product_card_stack.dart';
import 'package:ecommerce_project/ui/widgets/listview_horizontal_scroll_product_card_vertical.dart';
import 'package:ecommerce_project/ui/widgets/slivers_and_appbars/sliver_app_bar_flexible.dart';
import 'package:ecommerce_project/ui/widgets/slivers_and_appbars/sliver_app_bar_main.dart';
import 'package:ecommerce_project/ui/widgets/top_sliding_contents/dummy_top_sliding_content.dart';
import 'package:ecommerce_project/utilities/k_constants.dart';
import 'package:ecommerce_project/utilities/k_strings_en.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.white,
      body: CustomScrollView(
        physics: const ClampingScrollPhysics(),
        slivers: [
          const SliverAppBarMain(),
          SliverAppBarFlexible(
            expandedHeight: 275,
            content: CarouselIntegrated(
              contentList: [
                GestureDetector(
                  onTap: () {
                    DialogPopupWidgetMain(
                      context: context,
                      content: DialogPopupCardHomeScreen(
                        title: 'Winter Collection',
                        subtitle: '20% Off Selected Brands',
                        imageUrl: 'assets/images/pose2.jpg',
                        buttonText: 'Check Out',
                        cardHeight: size.height * 0.5,
                        cardWidth: size.width * 0.75,
                      ),
                    ).showAlertDialog();
                  },
                  child: const DummyTopSlidingContent(),
                ),
                const DummyTopSlidingContent(),
              ],
            ),
          ),

          /// TODO : Slivers to-be-added
          // SliverAppBarSnappable(),

          // SliverListFixed(),

          // SliverListviewBuilder(),

          // SliverFillRemaining(
          //   hasScrollBody: true,
          //   child: Container(),
          // ),

          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: 1,
              (context, index) => Column(
                children: [
                  const SizedBox(height: Constants.kPaddingAppTop),
                  ListviewHorizontalScrollProductCardStack(
                    cardHeight: 200,
                    cardWidth: 200,
                    collectionTitle: 'Listview Stack',
                    productList: [
                      Product(
                        title: 'PCX Sale-Fit',
                        price: 69.992342345231115111452345234535234523345234,
                        imageUrl: 'assets/images/pose1.jpg',
                      ),
                      Product(
                        title: 'MOS Sale-Fit Shirt Shirtasdfasdfsdfgsdfg',
                        price: 133.99,
                        imageUrl: 'assets/images/pose2.jpg',
                      ),
                      Product(
                        title: 'MOS Sale-Fit Shirt',
                        price: 49.99,
                        imageUrl: 'assets/images/pose3.jpg',
                      ),
                      Product(
                        title: 'MOS Sale-Fit Shirt',
                        price: 49.99,
                        imageUrl: 'assets/images/pose4.jpg',
                      ),
                      Product(
                        title: 'MOS Sale-Fit Shirt',
                        price: 49.99,
                        imageUrl: 'assets/images/pose5.jpg',
                      ),
                    ],
                  ),
                  const SizedBox(height: Constants.kPaddingContentAndContent),
                  ListviewHorizontalScrollProductCardVertical(
                    cardWidth: 120,
                    cardHeight: 165,
                    isBorderElevated: false,
                    collectionTitle: 'Listview Vertical',
                    productList: [
                      Product(
                        title: 'PCX Sale-Fit',
                        price: 69.992342345231115111452345234535234523345234,
                        imageUrl: 'assets/images/pose1.jpg',
                      ),
                      Product(
                        title: 'MOS Sale-Fit Shirt Shirtasdfasdfsdfgsdfg',
                        price: 49,
                        imageUrl: 'assets/images/pose2.jpg',
                      ),
                      Product(
                        title: 'MOS Sale-Fit Shirt',
                        price: 49.99,
                        imageUrl: 'assets/images/pose3.jpg',
                      ),
                      Product(
                        title: 'MOS Sale-Fit Shirt',
                        price: 49.99,
                        imageUrl: 'assets/images/pose4.jpg',
                      ),
                      Product(
                        title: 'MOS Sale-Fit Shirt',
                        price: 49.99,
                        imageUrl: 'assets/images/pose5.jpg',
                      ),
                    ],
                  ),
                  const SizedBox(height: Constants.kPaddingContentAndContent),
                  ListviewHorizontalScrollProductCardHorizontal(
                    cardHeight: 65,
                    cardWidth: 160,
                    isBorderElevated: true,
                    elevation: 5,
                    collectionTitle: 'Listview Horizontal',
                    productList: [
                      Product(
                        title: 'PPCX Sale-Fit',
                        price: 69.992342345231115111452345234535234523345234,
                        imageUrl: 'assets/images/pose1.jpg',
                      ),
                      Product(
                        title: 'MOS Sale-Fit Shirt Shirtasdfasdfsdfgsdfg',
                        price: 49,
                        imageUrl: 'assets/images/pose2.jpg',
                      ),
                      Product(
                        title: 'MOS Sale-Fit Shirt',
                        price: 49.99,
                        imageUrl: 'assets/images/pose3.jpg',
                      ),
                      Product(
                        title: 'MOS Sale-Fit Shirt',
                        price: 49.99,
                        imageUrl: 'assets/images/pose4.jpg',
                      ),
                      Product(
                        title: 'MOS Sale-Fit Shirt',
                        price: 49.99,
                        imageUrl: 'assets/images/pose5.jpg',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          SliverPadding(
            padding: const EdgeInsets.only(
              left: Constants.kPaddingHorizontalMain,
              right: Constants.kPaddingHorizontalMain,
              top: Constants.kPaddingContentAndContent,
              bottom: Constants.kPaddingTitleAndContent,
            ),
            sliver: SliverToBoxAdapter(
              child: TitleCollectionAndSeeAllButton(
                title: 'Gridview',
                buttonTitle: Strings.kStringButtonCollectionTitle,
                onPressed: () {},
              ),
            ),
          ),

          GridviewProductCardVertical(
            cardHeight: 165,
            cardWidth: 130,
            isBorderElevated: true,
            productList: [
              Product(
                title: 'MOS Sale-Fit Shirtasdfasdfsdfgsdfg',
                price: 69.992342345231115111452345234535234523345234,
                imageUrl: 'assets/images/pose1.jpg',
              ),
              Product(
                title: 'MOS Sale-Fit Shirt',
                price: 49,
                imageUrl: 'assets/images/pose2.jpg',
              ),
              Product(
                title: 'MOS Sale-Fit Shirt',
                price: 49.99,
                imageUrl: 'assets/images/pose4.jpg',
              ),
              Product(
                title: 'MOS Sale-Fit Shirt',
                price: 49.99,
                imageUrl: 'assets/images/pose5.jpg',
              ),
              Product(
                title: 'MOS Sale-Fit Shirtasdfasdfsdfgsdfg',
                price: 69.992342345231115111452345234535234523345234,
                imageUrl: 'assets/images/pose1.jpg',
              ),
              Product(
                title: 'MOS Sale-Fit Shirt',
                price: 49,
                imageUrl: 'assets/images/pose2.jpg',
              ),
              Product(
                title: 'MOS Sale-Fit Shirt',
                price: 49.99,
                imageUrl: 'assets/images/pose3.jpg',
              ),
              Product(
                title: 'MOS Sale-Fit Shirt',
                price: 49.99,
                imageUrl: 'assets/images/pose4.jpg',
              ),
              Product(
                title: 'MOS Sale-Fit Shirt',
                price: 49.99,
                imageUrl: 'assets/images/pose5.jpg',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
