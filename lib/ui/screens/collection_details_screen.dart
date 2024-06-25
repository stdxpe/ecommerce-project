import 'package:flutter/material.dart';

import 'package:ecommerce_project/models/collection.dart';
import 'package:ecommerce_project/models/product.dart';
import 'package:ecommerce_project/ui/screens/filters_screen.dart';
import 'package:ecommerce_project/ui/widgets/bottom_sheets/bottom_sheet_general_modal_sheet.dart';
import 'package:ecommerce_project/ui/widgets/gridview_product_card_vertical_non_sliver.dart';
import 'package:ecommerce_project/ui/widgets/slivers_and_appbars/app_bar_main_non_sliver.dart';
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
      appBar: const AppBarMainNonSliver(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
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
                    onPressed: () {
                      BottomSheetGeneralModalSheet().show(
                        contextParam: context,
                        sizeParam: size,
                        sizeHeightPercent: 0.75,
                        screen: const FiltersScreen(),
                      );
                    },
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
