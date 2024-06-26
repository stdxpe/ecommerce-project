import 'package:flutter/material.dart';

import 'package:ecommerce_project/models/product.dart';
import 'package:ecommerce_project/ui/widgets/buttons/button_close_icon.dart';
import 'package:ecommerce_project/ui/widgets/listview_vertical_scroll_product_card_horizontal.dart';
import 'package:ecommerce_project/ui/widgets/slivers_and_appbars/sliver_app_bar_main.dart';
import 'package:ecommerce_project/ui/widgets/titles/title_main_sliver.dart';
import 'package:ecommerce_project/ui/widgets/titles/title_number_of_items_found_sliver.dart';
import 'package:ecommerce_project/utilities/k_color_palette.dart';
import 'package:ecommerce_project/utilities/k_strings_en.dart';

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
          const TitleMainSliver(title: Strings.kStringWishlistTitle),
          const TitleNumberOfItemsFoundSliver(itemCount: 21),
          ListviewVerticalScrollProductCardHorizontal(
            isBorderElevated: false,
            cardHeight: 100,
            bottomText: 'Size: M  |  Color: Grey',
            cardWidth: size.width,
            optionalBottomWidget: Positioned.fill(
              child: Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ButtonCloseIcon(
                        onPressed: () {},
                        buttonColor: ColorPalette.kColorDarkButton,
                        iconColor: Colors.white,
                      ),
                      const SizedBox(width: 5),
                      ButtonCloseIcon(
                        onPressed: () {},
                        buttonColor: ColorPalette.kColorModalBottomSheet,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            productList: [
              Product(
                title: 'PCX Sale-Fit',
                price: 69.992342345231115111452345234535234523345234,
                mainPhoto: 'assets/images/pose1.jpg',
              ),
              Product(
                title: 'MOS Sale-Fit Shirt Shirtasdfasdfsdfgsdfg',
                price: 49,
                mainPhoto: 'assets/images/pose2.jpg',
              ),
              Product(
                title: 'MOS Sale-Fit Shirt',
                price: 49.99,
                mainPhoto: 'assets/images/pose3.jpg',
              ),
              Product(
                title: 'PCX Sale-Fit',
                price: 69.992342345231115111452345234535234523345234,
                mainPhoto: 'assets/images/pose1.jpg',
              ),
              Product(
                title: 'MOS Sale-Fit Shirt Shirtasdfasdfsdfgsdfg',
                price: 49,
                mainPhoto: 'assets/images/pose2.jpg',
              ),
              Product(
                title: 'MOS Sale-Fit Shirt',
                price: 49.99,
                mainPhoto: 'assets/images/pose3.jpg',
              ),
              Product(
                title: 'PCX Sale-Fit',
                price: 69.992342345231115111452345234535234523345234,
                mainPhoto: 'assets/images/pose1.jpg',
              ),
              Product(
                title: 'MOS Sale-Fit Shirt',
                price: 49.99,
                mainPhoto: 'assets/images/pose3.jpg',
              ),
              Product(
                title: 'PCX Sale-Fit',
                price: 69.992342345231115111452345234535234523345234,
                mainPhoto: 'assets/images/pose1.jpg',
              ),
              Product(
                title: 'MOS Sale-Fit Shirt',
                price: 49.99,
                mainPhoto: 'assets/images/pose3.jpg',
              ),
              Product(
                title: 'PCX Sale-Fit',
                price: 69.992342345231115111452345234535234523345234,
                mainPhoto: 'assets/images/pose1.jpg',
              ),
              Product(
                title: 'MOS Sale-Fit Shirt Shirtasdfasdfsdfgsdfg',
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
        ],
      ),
    );
  }
}
