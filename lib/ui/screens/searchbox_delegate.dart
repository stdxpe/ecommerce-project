import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:ecommerce_project/models/product.dart';
import 'package:ecommerce_project/ui/widgets/cards/product_card_horizontal_mini.dart';
import 'package:ecommerce_project/ui/widgets/titles/title_main.dart';
import 'package:ecommerce_project/ui/widgets/titles/title_number_of_items_found.dart';
import 'package:ecommerce_project/utilities/k_constants.dart';
import 'package:ecommerce_project/utilities/k_strings_en.dart';

class CustomSearchDelegate extends SearchDelegate {
  @override
  TextStyle? get searchFieldStyle => const TextStyle().copyWith(
        fontSize: 20,
        color: Colors.black,
      );

  @override
  InputDecorationTheme? get searchFieldDecorationTheme =>
      const InputDecorationTheme().copyWith(
        hintStyle: TextStyle(
          fontSize: 20,
          color: Colors.black.withOpacity(0.6),
        ),
        // labelStyle: TextStyle(fontSize: 5),
        border: InputBorder.none,
      );

  @override
  TextInputAction get textInputAction => TextInputAction.search;

  @override
  void showResults(BuildContext context) {
    // buildResults(context);
    super.showResults(context);
  }

  // @override
  // void showSuggestions(BuildContext context) {
  //   super.showSuggestions(context);
  // }

  // @override
  // void dispose() {
  //   super.dispose();
  // }

  @override
  PreferredSizeWidget? buildBottom(BuildContext context) {
    return super.buildBottom(context);
  }

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
          buildSuggestions(context);
        },
        icon: const Icon(
          CupertinoIcons.clear,
          color: Colors.black,
          size: 18,
        ),
      ),
      IconButton(
        onPressed: () {
          // buildResults(context);
          showResults(context);
        },
        icon: const Icon(
          CupertinoIcons.search,
          color: Colors.black,
          size: 24,
        ),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.of(context).pop();
      },
      icon: const Icon(
        CupertinoIcons.chevron_back,
        color: Colors.black,
        size: 24,
      ),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    print(query);
    automaticallyImplyLeading = true;

    return SizedBox(
      height: size.height,
      width: size.width,
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              physics: const ClampingScrollPhysics(),
              child: Column(
                children: [
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
                          title: (query.isEmpty)
                              ? Strings.kStringSearchTitle
                              : query,
                          optionalRightIcon: Icons.tune,
                          iconSize: 22.5,
                          onPressed: () {},
                        ),
                        const TitleNumberOfItemsFound(
                          title: Strings.kStringItemsFound,
                          itemCount: 3,
                        ),
                      ],
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
        ],
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Container();

    // Center(
    //   child: Text(
    //     Strings.kStringSearchInitialText,
    //   ),
    // );
  }
}
