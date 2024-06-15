import 'package:ecommerce_project/ui/widgets/title_main_sliver.dart';
import 'package:ecommerce_project/ui/widgets/title_number_of_items_found_sliver.dart';
import 'package:flutter/material.dart';

import 'package:ecommerce_project/ui/widgets/listview_vertical_scroll_product_card_horizontal.dart';
import 'package:ecommerce_project/ui/widgets/title_number_of_items_found.dart';
import 'package:ecommerce_project/models/product.dart';
import 'package:ecommerce_project/ui/widgets/sliver_app_bars/sliver_app_bar_main.dart';
import 'package:ecommerce_project/ui/widgets/title_main.dart';
import 'package:ecommerce_project/utilities/k_constants.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        physics: const ClampingScrollPhysics(),
        slivers: [
          const SliverAppBarMain(),
          const TitleMainSliver(title: 'Wishlist'),
          const TitleNumberOfItemsFoundSliver(itemCount: 23),
          ListviewVerticalScrollProductCardHorizontal(
            collectionTitle: 'Wishlist',
            cardHeight: 100,
            bottomText: 'Size: M  |  Color: Grey',
            cardWidth: size.width,
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
    );
  }
}
