import 'package:flutter/material.dart';

import 'package:ecommerce_project/models/product.dart';
import 'package:ecommerce_project/ui/widgets/bottom_sheets/bottom_sheet_button_filters.dart';
import 'package:ecommerce_project/ui/widgets/cards/product_card_horizontal_mini.dart';
import 'package:ecommerce_project/ui/widgets/switch_price_filter_range_slider.dart';
import 'package:ecommerce_project/ui/widgets/switch_size_selector.dart';
import 'package:ecommerce_project/ui/widgets/titles/title_main.dart';
import 'package:ecommerce_project/utilities/k_constants.dart';
import 'package:ecommerce_project/utilities/k_strings_en.dart';
import 'package:ecommerce_project/utilities/k_text_styles.dart';

class FiltersScreen extends StatelessWidget {
  const FiltersScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height,
      width: size.width,
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              physics: const ClampingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// TITLE
                  Padding(
                    padding: const EdgeInsets.only(
                      left: Constants.kPaddingHorizontalMain,
                      right: Constants.kPaddingHorizontalMain,
                      // top: Constants.kPaddingAppTopAndMainTitle,
                      bottom: Constants.kPaddingMainTitleAndContent,
                    ),
                    child: TitleMain(
                      title: Strings.kStringFiltersTitle,
                      optionalRightIcon: Icons.close,
                      iconSize: 22.5,
                      onPressed: () {},
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      left: Constants.kPaddingHorizontalMain,
                      right: Constants.kPaddingHorizontalMain,
                      bottom: 5,
                    ),
                    child: Text(
                      'Price Range',
                      style: kFilterScreenMiniTitleTextStyle,
                    ),
                  ),
                  const SwitchPriceFilterRangeSlider(),

                  // const SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.only(
                      left: Constants.kPaddingHorizontalMain,
                      right: Constants.kPaddingHorizontalMain,
                    ),
                    child: Text(
                      'Sizes',
                      style: kFilterScreenMiniTitleTextStyle,
                    ),
                  ),

                  // color: Colors.red.withOpacity(0.5),
                  Container(
                    width: size.width,
                    child: SwitchSizeSelector(
                      itemSize: 40,
                      selectedItem: 'S',
                      items: const [
                        'XS',
                        'S',
                        'M',
                        'L',
                        'XL',
                      ],
                    ),
                  ),

                  const Padding(
                    padding: EdgeInsets.only(
                      left: Constants.kPaddingHorizontalMain,
                      right: Constants.kPaddingHorizontalMain,
                      top: Constants.kPaddingHorizontalMain,
                      bottom: 5,
                    ),
                    child: Text(
                      'Collections',
                      style: kFilterScreenMiniTitleTextStyle,
                    ),
                  ),

                  ListView.builder(
                    // padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    clipBehavior: Clip.none,
                    physics: const NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.only(
                      left: Constants.kPaddingHorizontalMain,
                      right: Constants.kPaddingHorizontalMain,
                      top: 5,
                      // top: Constants.kPaddingHorizontalMain,
                    ),
                    itemCount: 14,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(
                            bottom: Constants.kPaddingBetweenElementsMain * 2),
                        child: ProductCardHorizontalMini(
                          onPressed: () {
                            // close(context, 'result');
                            print('search closed executed');
                          },
                          product: Product(
                            title: 'MOS Sale-Fit Shirt Shirtasdfasdfsdfgsdfg',
                            price: 133.99,
                            imageUrl: 'assets/images/pose5.jpg',
                          ),
                          cardColor: Colors.white.withOpacity(0.9),
                          cardHeight: 75,
                          cardWidth: size.width,
                          isBorderElevated: true,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),

          /// PAYMENT BOTTOM SHEET
          Align(
            alignment: Alignment.bottomCenter,
            child: BottomSheetButtonFilters(
              onPressedMain: () {},
              onPressedOptional: () {},
            ),
          ),
        ],
      ),
    );
  }
}
