import 'package:ecommerce_project/ui/widgets/title_number_of_items_found.dart';
import 'package:ecommerce_project/utilities/k_constants.dart';
import 'package:ecommerce_project/utilities/k_strings_en.dart';
import 'package:flutter/material.dart';

class TitleNumberOfItemsFoundSliver extends StatelessWidget {
  final String title;
  final int itemCount;

  const TitleNumberOfItemsFoundSliver({
    this.title = Strings.kStringItemsFound,
    required this.itemCount,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.only(
        left: Constants.kPaddingHorizontalMain,
        right: Constants.kPaddingHorizontalMain,
        bottom: Constants.kPaddingItemsCountAndContent,
        top: Constants.kPaddingItemsCountAndMainTitle,
      ),
      sliver: SliverToBoxAdapter(
        child: TitleNumberOfItemsFound(
          title: title,
          itemCount: itemCount,
        ),
      ),
    );
  }
}
