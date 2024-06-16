import 'package:flutter/material.dart';

import 'package:ecommerce_project/ui/widgets/bottom_sheet_shopping_cart.dart';
import 'package:ecommerce_project/ui/widgets/button_shopping_cart_item_counter.dart';
import 'package:ecommerce_project/utilities/k_strings_en.dart';
import 'package:ecommerce_project/ui/widgets/title_main_sliver.dart';
import 'package:ecommerce_project/ui/widgets/title_number_of_items_found_sliver.dart';
import 'package:ecommerce_project/ui/widgets/listview_vertical_scroll_product_card_horizontal.dart';
import 'package:ecommerce_project/models/product.dart';
import 'package:ecommerce_project/ui/widgets/sliver_app_bars/sliver_app_bar_main.dart';

class ShoppingCartScreen extends StatelessWidget {
  const ShoppingCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Column(
          children: [
            Expanded(
              child: CustomScrollView(
                physics: const ClampingScrollPhysics(),
                slivers: [
                  const SliverAppBarMain(),
                  const TitleMainSliver(title: Strings.kStringShoppingCart),
                  const TitleNumberOfItemsFoundSliver(itemCount: 21),
                  ListviewVerticalScrollProductCardHorizontal(
                    isBorderElevated: false,
                    cardHeight: 75,
                    bottomText: 'Size: M  |  Color: Grey',
                    cardWidth: size.width,
                    optionalBottomWidget: const Positioned.fill(
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: EdgeInsets.all(5.0),
                          child: ButtonShoppingCartItemCounter(itemCount: 2),
                        ),
                      ),
                    ),
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
                        title: 'PCX Sale-Fit',
                        price: 69.992342345231115111452345234535234523345234,
                        imageUrl: 'assets/images/pose1.jpg',
                      ),
                      Product(
                        title: 'MOS Sale-Fit Shirt',
                        price: 49.99,
                        imageUrl: 'assets/images/pose3.jpg',
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const BottomSheetShoppingCart(),
          ],
        ),
      ),
    );
  }
}