import 'package:flutter/material.dart';

import 'package:ecommerce_project/ui/widgets/carousel_sliders/carousel_integrated.dart';
import 'package:ecommerce_project/ui/widgets/sliver_app_bars/sliver_app_bar_flexible.dart';
import 'package:ecommerce_project/ui/widgets/sliver_app_bars/sliver_app_bar_main.dart';
import 'package:ecommerce_project/ui/widgets/sliver_app_bars/sliver_list_fixed.dart';
import 'package:ecommerce_project/ui/widgets/sliver_app_bars/sliver_listview_builder.dart';
import 'package:ecommerce_project/ui/widgets/switch_indexer_dots.dart';
import 'package:ecommerce_project/ui/widgets/top_contents/dummy_top_content.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: [
          SliverAppBarMain(),
          SliverAppBarFlexible(
            expandedHeight: 275,
            content: CarouselIntegrated(
              contentList: [
                DummyTopContent(),
                DummyTopContent(),
              ],
            ),
          ),
          // SliverAppBarSnappable(),

          SliverListFixed(),
          SliverListviewBuilder(),

          // SliverList.separated(itemBuilder: itemBuilder, separatorBuilder: separatorBuilder)

          // SliverToBoxAdapter(
          //   child: Container(
          //     color: Colors.greenAccent,
          //     height: 200,
          //   ),
          // ),

          // SliverList(
          //   delegate: SliverChildBuilderDelegate(
          //     (context, index) => Padding(
          //       padding: EdgeInsets.only(top: 35.0),
          //       child: Column(
          //         mainAxisAlignment: MainAxisAlignment.end,
          //         children: [
          //           Container(
          //             height: 300,
          //             width: size.width,
          //             color: Colors.blue,
          //           ),
          //           Container(
          //             height: 300,
          //             width: size.width,
          //             color: Colors.yellow,
          //           ),
          //           Container(
          //             height: 300,
          //             width: size.width,
          //             color: Colors.green,
          //           ),
          //         ],
          //       ),
          //     ),
          //     childCount: 1,
          //   ),
          // ),
        ],
      ),
    );
  }
}
