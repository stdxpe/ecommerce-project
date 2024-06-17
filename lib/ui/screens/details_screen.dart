import 'package:flutter/material.dart';

import 'package:ecommerce_project/ui/widgets/button_close_icon.dart';
import 'package:ecommerce_project/ui/widgets/button_main.dart';
import 'package:ecommerce_project/ui/widgets/button_circular_main.dart';
import 'package:ecommerce_project/ui/widgets/switch_color_selection.dart';
import 'package:ecommerce_project/ui/widgets/switch_total_rating_stars.dart';
import 'package:ecommerce_project/utilities/k_constants.dart';
import 'package:ecommerce_project/ui/widgets/title_details_screen_name_and_price.dart';
import 'package:ecommerce_project/utilities/k_color_palette.dart';
import 'package:ecommerce_project/models/product.dart';
import 'package:ecommerce_project/ui/widgets/carousel_sliders/carousel_static.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({
    required this.product,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        forceMaterialTransparency: true,
        backgroundColor: Colors.transparent,
        leading: Container(
          margin: const EdgeInsets.all(10),
          child: ButtonCloseIcon(
            onPressed: () {
              Navigator.of(context).pop();
            },
            iconColor: Colors.white,
            buttonColor: Colors.black.withOpacity(0.15),
          ),
        ),
        leadingWidth: 45,
        actions: [
          Container(
            margin: const EdgeInsets.all(10),
            child: ButtonCloseIcon(
              onPressed: () {},
              iconColor: Colors.white,
              buttonColor: Colors.black.withOpacity(0.15),
            ),
          ),
        ],
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
                                const SizedBox(
                                  // color: Colors.yellow.withOpacity(0.5),
                                  child: SwitchTotalRatingStars(rating: 3.5),
                                ),
                                // const SizedBox(
                                //     height: Constants
                                //         .kPaddingDetailsScreenBetweenElementsMain),
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
                                // const SizedBox(
                                //     height: Constants
                                //         .kPaddingDetailsScreenBetweenElementsMain),
                                // SwitchSizeSelection(
                                //   selectedItem: 'S',
                                //   items: const ['S', 'M', 'L'],
                                // ),
                                // const SizedBox(
                                //     height: Constants
                                //         .kPaddingDetailsScreenBetweenElementsMain),
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
                                  ButtonCircularMain(
                                    onPressed: () {},
                                    icon: Icons.favorite,
                                    iconColor: Colors.red,
                                  ),
                                  const SizedBox(height: 15),
                                  ButtonCircularMain(
                                    onPressed: () {},
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
            Container(
              width: size.width,
              padding: const EdgeInsets.symmetric(
                  horizontal: Constants.kPaddingHorizontalMain),
              // color: Colors.yellow.withOpacity(0.5),
              child: const Text(
                'ClassisdfgsdfgsdfgsdfgsdfgsdfgsdcClassisdfgsdfgsdfgsdfgsdfgsdfgsdcClassisdfgsdfgsdfgsdfgsdfgsdfgsdcClassisdfgsdfgsdfgsdfgsdfgsdfgsdcClassisdfgsdfgsdfgsdfgsdfgsdfgsdcClassisdfgsdfgsdfgsdfgsdfgsdfgsdcClassisdfgsdfgsdfgsdfgsdfgsdfgsdcClassisdfgsdfgsdfgsdfgsdfgsdfgsdcClassisdfgsdfgsdfgsdfgsdfgsdfgsdcClassisdfgsdfgsdfgsdfgsdfgsdfgsdcClassisdfgsdfgsdfgsdfgsdfgsdfgsdcClassisdfgsdfgsdfgsdfgsdfgsdfgsdcClassisdfgsdfgsdfgsdfgsdfgsdfgsdcClassisdfgsdfgsdfgsdfgsdfgsdfgsdcClassisdfgsdfgsdfgsdfgsdfgsdfgsdcClassisdfgsdfgsdfgsdfgsdfgsdfgsdc',
                maxLines: 15,
              ),
            ),
            const SizedBox(
                height: Constants.kPaddingDetailsScreenBetweenElementsMain),
            Container(
              // color: Colors.green.withOpacity(0.5),
              padding: const EdgeInsets.symmetric(
                horizontal: Constants.kPaddingHorizontalMainButton -
                    Constants.kPaddingHorizontalMain,
              ),
              width: size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: ButtonMain(
                      onPressed: () {},
                      text: 'Add to Shopping Cart',
                      buttonColor: ColorPalette.kColorDarkButton,
                      textColor: Colors.white,
                      paddingHorizontal: 0,
                    ),
                  ),
                  const SizedBox(width: 15),
                  ButtonCircularMain(
                    onPressed: () {},
                    icon: Icons.favorite,
                    iconColor: Colors.red,
                    buttonSize: 50,
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
