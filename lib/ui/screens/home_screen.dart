import 'package:ecommerce_project/ui/widgets/dialog_popup_widget.dart';
import 'package:ecommerce_project/ui/widgets/platform_adaptive_widgets/platform_adaptive_alert_dialog.dart';
import 'package:ecommerce_project/ui/widgets/platform_adaptive_widgets/platform_adaptive_navigator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:ecommerce_project/utilities/k_strings_en.dart';
import 'package:ecommerce_project/models/product.dart';
import 'package:ecommerce_project/utilities/k_constants.dart';
import 'package:ecommerce_project/ui/widgets/gridview_product_card_vertical.dart';
import 'package:ecommerce_project/ui/widgets/listview_product_card_horizontal.dart';
import 'package:ecommerce_project/ui/widgets/listview_product_card_stack.dart';
import 'package:ecommerce_project/ui/widgets/listview_product_card_vertical.dart';
import 'package:ecommerce_project/ui/widgets/button_collection_title_and_show_all.dart';
import 'package:ecommerce_project/ui/widgets/carousel_sliders/carousel_integrated.dart';
import 'package:ecommerce_project/ui/widgets/sliver_app_bars/sliver_app_bar_flexible.dart';
import 'package:ecommerce_project/ui/widgets/sliver_app_bars/sliver_app_bar_main.dart';
import 'package:ecommerce_project/ui/widgets/top_sliding_contents/dummy_top_sliding_content.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: [
          const SliverAppBarMain(),
          SliverAppBarFlexible(
            expandedHeight: 275,
            content: CarouselIntegrated(
              contentList: [
                GestureDetector(
                    onTap: () {
                      DialogPopupWidget(
                        context: context,
                        title: 'Winter Collection',
                        subtitle: '20% Off Selected Brands',
                        imageUrl: 'assets/images/pose2.jpg',
                        buttonText: 'Check Out',
                      ).showAlertDialog();
                    },
                    child: const DummyTopSlidingContent()),
                const DummyTopSlidingContent(),
              ],
            ),
          ),

          /// TODO : Slivers to-be-added
          // SliverAppBarSnappable(),

          // SliverListFixed(),

          // SliverListviewBuilder(),

          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: 1,
              (context, index) => Column(
                children: [
                  const SizedBox(height: Constants.kPaddingAppTop),
                  ListviewProductCardStack(
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
                  ListviewProductCardVertical(
                    cardHeight: 145,
                    cardWidth: 100,
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
                  ListviewProductCardHorizontal(
                    cardHeight: 50,
                    cardWidth: 150,
                    isBorderElevated: false,
                    collectionTitle: 'Listview Horizontal',
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
              child: ButtonCollectionTitleAndShowAll(
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
