import 'package:flutter/material.dart';

import 'package:ecommerce_project/models/collection.dart';
import 'package:ecommerce_project/models/product.dart';
import 'package:ecommerce_project/ui/widgets/buttons/button_close_icon.dart';
import 'package:ecommerce_project/ui/widgets/cards/collection_card_primary.dart';
import 'package:ecommerce_project/ui/widgets/cards/collection_card_secondary.dart';
import 'package:ecommerce_project/ui/widgets/listview_vertical_scroll_product_card_horizontal.dart';
import 'package:ecommerce_project/ui/widgets/slivers_and_appbars/sliver_app_bar_main.dart';
import 'package:ecommerce_project/ui/widgets/staggered_grid_card_component.dart';
import 'package:ecommerce_project/ui/widgets/staggered_grid_card_component2.dart';
import 'package:ecommerce_project/ui/widgets/titles/title_main_sliver.dart';
import 'package:ecommerce_project/ui/widgets/titles/title_number_of_items_found_sliver.dart';
import 'package:ecommerce_project/utilities/k_color_palette.dart';
import 'package:ecommerce_project/utilities/k_strings_en.dart';

class SearchDiscoverScreen extends StatelessWidget {
  const SearchDiscoverScreen({super.key});

  /// TODO: Categories chips and Filtering Options to-be added.
  /// TODO: Vertical/Horizontal > 1 aspect ratio Product Card listview horizontal to-be added.

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        physics: const ClampingScrollPhysics(),
        slivers: [
          const SliverAppBarMain(),

          const TitleMainSliver(title: Strings.kStringExploreTitle),
          // SizedBox(
          //   height: Constants.kPaddingItemsCountAndContent +
          //       Constants.kPaddingItemsCountAndMainTitle,
          // ),
          const TitleNumberOfItemsFoundSliver(itemCount: 21),

          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.only(bottom: 50),

              // padding: EdgeInsets.symmetric(horizontal: 35 / 2),
              // color: Colors.red.withOpacity(0.5),
              child: CollectionCardPrimary(
                isRadiusCorners: false,
                cardWidth: size.width,
                cardHeight: size.width,
                collection: Collection(
                  id: '1',
                  title: 'Designer Collection',
                  subtitle: '',
                  description: '60+ Designer Brands\nStuff your shoes for \$20',
                  imageUrl: 'assets/images/pose5.jpg',
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.only(bottom: 50),
              height: size.height * 0.32,
              width: size.width,
              // padding: EdgeInsets.symmetric(horizontal: 35 / 2),
              // color: Colors.red.withOpacity(0.5),
              child: ListView.builder(
                  itemCount: 7,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5.0),
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
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.only(bottom: 50),
              // color: Colors.red.withOpacity(0.5),
              child: StaggeredGridCardComponent2(
                width: size.width,
                height: size.width * (2 / 4),
                widthItemCount: 4,
                heightItemCount: 2,
              ),
            ),
          ),
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
            ],
          ),

          SliverToBoxAdapter(
            child: Container(
              // padding: EdgeInsets.symmetric(horizontal: 35 / 2),
              // color: Colors.red.withOpacity(0.5),
              child: CollectionCardPrimary(
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
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.only(bottom: 50, top: 50),
              // color: Colors.red.withOpacity(0.5),
              child: StaggeredGridCardComponent(
                width: size.width,
                height: size.width * (2 / 3),
                widthItemCount: 3,
                heightItemCount: 2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
