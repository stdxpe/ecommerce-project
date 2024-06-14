import 'package:flutter/material.dart';

import 'package:ecommerce_project/ui/widgets/carousel_sliders/carousel_integrated.dart';
import 'package:ecommerce_project/ui/widgets/top_sliding_contents/dummy_top_sliding_content.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 400,
          width: size.width,
          child: const CarouselIntegrated(
            indexerAlignment: Alignment.bottomCenter,
            indexerPadding: EdgeInsets.only(bottom: 50),
            contentList: [
              DummyTopSlidingContent(),
              DummyTopSlidingContent(),
            ],
          ),
        ),
      ),
    );
  }
}
