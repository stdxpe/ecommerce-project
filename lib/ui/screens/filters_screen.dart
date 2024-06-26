import 'package:flutter/material.dart';

import 'package:ecommerce_project/ui/widgets/bottom_sheets/bottom_sheet_button_filters.dart';
import 'package:ecommerce_project/ui/widgets/filter_related/switch_filter_listview_of_collections.dart';
import 'package:ecommerce_project/ui/widgets/filter_related/switch_size_selector.dart';
import 'package:ecommerce_project/ui/widgets/switch_price_filter_range_slider.dart';
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
                      bottom: Constants.kPaddingHorizontalMain * 0.5,
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Price Range',
                        style: kFilterScreenMiniTitleTextStyle,
                      ),
                    ),
                  ),
                  const SwitchPriceFilterRangeSlider(),

                  const Padding(
                    padding: EdgeInsets.only(
                      left: Constants.kPaddingHorizontalMain,
                      right: Constants.kPaddingHorizontalMain,
                      bottom: Constants.kPaddingHorizontalMain * 0.5,
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Size',
                        style: kFilterScreenMiniTitleTextStyle,
                      ),
                    ),
                  ),

                  // color: Colors.red.withOpacity(0.5),
                  Container(
                    width: size.width,
                    child: SwitchSizeSelector(
                      itemSize: 40,
                      selectedItem: 'XS',
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
                      bottom: Constants.kPaddingHorizontalMain * 0.5,
                      top: Constants.kPaddingHorizontalMain * 2,
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Collections',
                        style: kFilterScreenMiniTitleTextStyle,
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: Constants.kPaddingContentAndContent,
                    ),
                    child: SwitchFilterListviewOfCollections(
                      selectedFilterList: ['Summer', 'Spring'],
                      list: [
                        'Spring',
                        'Summer',
                        'Winter ',
                        'Autumn ',
                        'Beach ',
                        'Christmas ',
                        'Party ',
                      ],
                    ),
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
