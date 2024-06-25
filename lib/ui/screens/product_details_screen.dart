import 'package:flutter/material.dart';

import 'package:ecommerce_project/models/product.dart';
import 'package:ecommerce_project/ui/screens/reviews_screen.dart';
import 'package:ecommerce_project/ui/widgets/bottom_sheets/bottom_sheet_add_to_shopping_cart.dart';
import 'package:ecommerce_project/ui/widgets/bottom_sheets/bottom_sheet_general_modal_sheet.dart';
import 'package:ecommerce_project/ui/widgets/buttons/button_add_to_wishlist.dart';
import 'package:ecommerce_project/ui/widgets/buttons/button_circular_main.dart';
import 'package:ecommerce_project/ui/widgets/carousel_sliders/carousel_static.dart';
import 'package:ecommerce_project/ui/widgets/platform_adaptive_widgets/platform_adaptive_navigator.dart';
import 'package:ecommerce_project/ui/widgets/slivers_and_appbars/app_bar_main_non_sliver.dart';
import 'package:ecommerce_project/ui/widgets/switch_color_selection.dart';
import 'package:ecommerce_project/ui/widgets/switch_total_rating_stars.dart';
import 'package:ecommerce_project/ui/widgets/titles/title_details_screen_name_and_price.dart';
import 'package:ecommerce_project/utilities/k_color_palette.dart';
import 'package:ecommerce_project/utilities/k_constants.dart';

class ProductDetailsScreen extends StatelessWidget {
  final Product product;

  const ProductDetailsScreen({
    required this.product,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const AppBarMainNonSliver(
        // backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        isShareButtonIncluded: true,
      ),
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              width: size.width,
              height: size.height * 0.65,
              // TODO: Add elevation to carousel
              child: CarouselStatic(
                indexerAlignment: Alignment.bottomCenter,
                indexerPadding: const EdgeInsets.only(bottom: 15),
                contentList: [
                  InteractiveViewer(
                    child: Image.asset(
                      product.imageUrl,
                      width: size.width,
                      height: size.height,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: size.width,
              height: size.height * 0.35,
              // color: Colors.red.withOpacity(0.5),
              padding: const EdgeInsets.symmetric(
                horizontal: Constants.kPaddingHorizontalMain,
                vertical: Constants.kPaddingHorizontalMain,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    // color: Colors.red.withOpacity(0.5),
                    child: TitleDetailsScreenNameAndPrice(
                      title: product.title,
                      price: product.price,
                      droppedPrice: 352.9999,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Expanded(
                    child: SizedBox(
                      // color: Colors.yellow.withOpacity(0.5),
                      width: size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Flexible(
                            flex: 4,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    PlatformAdaptiveNavigator().push(
                                      context,
                                      ReviewsScreen(product: product),
                                    );
                                  },
                                  child: const SizedBox(
                                    // color: Colors.yellow.withOpacity(0.5),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        SwitchTotalRatingStars(rating: 3.5),
                                        SizedBox(width: 12.5),
                                        Text('234 Reviews'),
                                      ],
                                    ),
                                  ),
                                ),
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  clipBehavior: Clip.none,
                                  child: SwitchColorSelection(
                                    selectedItem: Colors.red,
                                    items: const [
                                      Colors.red,
                                      Colors.green,
                                      Colors.blue,
                                      Colors.pink,
                                      Colors.orangeAccent,
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: size.width * 0.65,
                                  // color: Colors.yellow.withOpacity(0.5),
                                  child: const Text(
                                    'ClassisdfgsdfgsdfgsdfgsdfgsdfgsdcClassisdfgsdfgsdfgsdfgsdfgsdfgsdcClassisdfgsdfgsdfgsdfgsdfgsdfgsdcClassisdfgsdfgsdfgsdfgsdfgsdfgsdcClassisdfgsdfgsdfgsdfgsdfgsdfgsdcClassisdfgsdfgsdfgsdfgsdfgsdfgsdcClassisdfgsdfgsdfgsdfgsdfgsdfgsdcClassisdfgsdfgsdfgsdfgsdfgsdfgsdcClassisdfgsdfgsdfgsdfgsdfgsdfgsdcClassisdfgsdfgsdfgsdfgsdfgsdfgsdcClassisdfgsdfgsdfgsdfgsdfgsdfgsdcClassisdfgsdfgsdfgsdfgsdfgsdfgsdcClassisdfgsdfgsdfgsdfgsdfgsdfgsdcClassisdfgsdfgsdfgsdfgsdfgsdfgsdcClassisdfgsdfgsdfgsdfgsdfgsdfgsdcClassisdfgsdfgsdfgsdfgsdfgsdfgsdc',
                                    maxLines: 2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Container(
                              // color: Colors.green.withOpacity(0.5),
                              color: Colors.transparent,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  ButtonAddToWishlist(
                                    onPressed: () {},
                                  ),
                                  const SizedBox(height: 15),
                                  ButtonCircularMain(
                                    onPressed: () {
                                      BottomSheetGeneralModalSheet().show(
                                        contextParam: context,
                                        sizeParam: size,
                                        sizeHeightPercent: 0.425,
                                        screen: BottomSheetAddToShoppingCart(
                                          product: product,
                                          productTitle: product.title,
                                          onPressedMain: () {},
                                        ),
                                      );
                                    },
                                    icon: Icons.shopping_bag,
                                    iconColor: Colors.white,
                                    buttonColor: ColorPalette.kColorDarkButton,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                      height:
                          Constants.kPaddingDetailsScreenBetweenElementsMain),
                ],
              ),
            ),

            /// TODO: Add "You may also like and Vertical Product Card"
            Container(
              width: size.width,
              padding: const EdgeInsets.symmetric(
                  horizontal: Constants.kPaddingHorizontalMain),
              // color: Colors.yellow.withOpacity(0.5),
              child: const Text(
                'ClassisdfgsdfgsdfgsdfgsdfassisdfgsdfgsdfgsdfgsdfgsdfgsdcClassisdfgsdfgsdfgsdfgsdfgsdfgsdcClassisdfgsdfgsdfgsdfgsdfgsdfgsdcClassisdfgsdfgsdfgsdfgsdfgsdfgsdcClassisdfgsdfgsdfgsdfgsdfgsdfgsdcClassisdfgsdfgsdfgsdfgsdfgsdfgsdcClassisdfgsdfgsdfgsdfgsdfgsdfgsdcClassisdfgsdfgsdfgsdfgsdfgsdfgsdcClassisdfgsdfgsdfgsdfgsdfgsdfgsdcClassisdfgsdfgsdfgsdfgsdfgsdfgsdcClassisdfgsdfgsdfgsdfgsdfgsdfgsdcClassisdfgsdfgsdfgsdfgsdfgsdfgsdcClassisdfgsdfgsdfgsdfgsdfgsdfgsdcClassisdfgsdfgsdfgsdfgsdfgsdfgsdcClassisdfgsdfgsdfgsdfgsdfgsdfgsdc',
                maxLines: 15,
              ),
            ),
            const SizedBox(height: Constants.kPaddingAppBottom),
          ],
        ),
      ),
    );
  }
}
