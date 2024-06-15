import 'package:flutter/material.dart';

import 'package:ecommerce_project/ui/widgets/sliver_app_bars/sliver_app_bar_main.dart';
import 'package:ecommerce_project/ui/widgets/title_main.dart';
import 'package:ecommerce_project/utilities/k_constants.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(physics: const ClampingScrollPhysics(), slivers: [
        const SliverAppBarMain(),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            childCount: 1,
            (context, index) => const Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: Constants.kPaddingHorizontalMain +
                        Constants.kPaddingBetweenElementsMain,
                    right: Constants.kPaddingHorizontalMain +
                        Constants.kPaddingBetweenElementsMain,
                    bottom: Constants.kPaddingTitleAndContent,
                    top: Constants.kPaddingAppTop,
                  ),
                  child: TitleMain(title: 'Discover'),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
