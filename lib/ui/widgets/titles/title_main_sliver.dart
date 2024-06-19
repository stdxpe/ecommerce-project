import 'package:flutter/material.dart';

import 'package:ecommerce_project/ui/widgets/titles/title_main.dart';
import 'package:ecommerce_project/utilities/k_constants.dart';

class TitleMainSliver extends StatelessWidget {
  final String title;

  const TitleMainSliver({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.only(
        left: Constants.kPaddingHorizontalMain,
        right: Constants.kPaddingHorizontalMain,
        // bottom: Constants.kPaddingMainTitleAndContent,
        top: Constants.kPaddingAppTopAndMainTitle,
      ),
      sliver: SliverToBoxAdapter(
        child: Column(
          children: [
            TitleMain(title: title),
          ],
        ),
      ),
    );
  }
}
