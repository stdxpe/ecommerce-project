import 'package:flutter/material.dart';

import 'package:ecommerce_project/models/collection.dart';
import 'package:ecommerce_project/models/product.dart';
import 'package:ecommerce_project/ui/widgets/gridview_product_card_vertical_non_sliver.dart';
import 'package:ecommerce_project/ui/widgets/slivers_and_appbars/app_bar_standart_back_search_button.dart';
import 'package:ecommerce_project/ui/widgets/titles/title_main.dart';
import 'package:ecommerce_project/ui/widgets/titles/title_number_of_items_found.dart';
import 'package:ecommerce_project/utilities/k_constants.dart';
import 'package:ecommerce_project/utilities/k_strings_en.dart';

class CollectionDetailsScreen extends StatelessWidget {
  final Collection collection;

  const CollectionDetailsScreen({
    required this.collection,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: const AppBarStandartBackSearchButton(
        backgroundColor: Colors.white,
        isOnlyBackButton: true,
      ),
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              width: size.width,
              height: size.height * 0.37,
              child: InteractiveViewer(
                child: Image.asset(
                  collection.imageUrl,
                  width: size.width,
                  height: size.height,
                  fit: BoxFit.cover,
                ),
              ),
            ),

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
                    title: collection.title,
                    optionalRightIcon: Icons.tune,
                    iconSize: 22.5,
                    onPressed: () {},
                  ),
                  const TitleNumberOfItemsFound(
                    title: Strings.kStringItemsFound,
                    itemCount: 3,
                  ),
                  const SizedBox(height: Constants.kPaddingContentAndContent),
                  SizedBox(
                    width: size.width,
                    // color: Colors.yellow.withOpacity(0.5),
                    child: const Text(
                      'ClassisdfgsdfgsdfgsdfgsdfgsdfgsdcClassisdfgsdfgsdfgsdfgsdfgsdfgsdcClassisdfgsdfgsdfgsdfgsdfgsdfgsdcClassisdfgsdfgsdfgsdfgsdfgsdfgsdcClassisdfgsdfgsdfgsdfgsdfgsdfgsdcClassisdfgsdfgsdfgsdfgsdfgsdfgsdcClassisdfgsdfgsdfgsdfgsdfgsdfgsdcClassisdfgsdfgsdfgsdfgsdfgsdfgsdcClassisdfgsdfgsdfgsdfgsdfgsdfgsdcClassisdfgsdfgsdfgsdfgsdfgsdfgsdcClassisdfgsdfgsdfgsdfgsdfgsdfgsdcClassisdfgsdfgsdfgsdfgsdfgsdfgsdcClassisdfgsdfgsdfgsdfgsdfgsdfgsdcClassisdfgsdfgsdfgsdfgsdfgsdfgsdcClassisdfgsdfgsdfgsdfgsdfgsdfgsdcClassisdfgsdfgsdfgsdfgsdfgsdfgsdc',
                      maxLines: 2,
                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              ),
            ),

            // /// COLLECTION NAME CARD LISTVIEW CONTENT
            // Center(
            //   child: Container(
            //     color: Colors.black12,

            //     margin: const EdgeInsets.only(bottom: 15, top: 0),
            //     height: 60,
            //     width: size.width,
            //     padding: EdgeInsets.symmetric(
            //         horizontal: Constants.kPaddingHorizontalMain),
            //     // color: ColorPalette.kColorModalBottomSheet,
            //     child: ListView.builder(
            //       clipBehavior: Clip.none,
            //       padding: const EdgeInsets.only(bottom: 10, top: 10),
            //       itemCount: 7,
            //       scrollDirection: Axis.horizontal,
            //       itemBuilder: (context, index) {
            //         return ButtonMain(
            //           onPressed: () {},
            //           width: 120,
            //           height: 35,
            //           paddingVertical: 0,
            //           paddingHorizontal: 5,
            //           textColor: Colors.white,
            //           buttonColor: (index == 1)
            //               ? ColorPalette.kColorDarkButton
            //               : Colors.grey,
            //           text: 'Collection ${index.toString()}',
            //         );
            //       },
            //     ),
            //   ),
            // ),

            /// GRIDVIEW CONTENT
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: Constants.kPaddingHorizontalMain,
                vertical: 10,
              ),
              child: GridviewProductCardVerticalNonSliver(
                cardHeight: 170,
                cardWidth: 150,
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
            ),
          ],
        ),
      ),
    );
  }
}

/// TODO: Details Screen with longer flexible app bar.
///
/// Womens Top and Designer Collection content screens
///
/// Desktop SS : Longer flex app bar and description, recommended products.
