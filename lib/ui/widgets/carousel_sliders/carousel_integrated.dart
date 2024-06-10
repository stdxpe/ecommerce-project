import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_project/ui/widgets/switch_indexer_dots.dart';
import 'package:flutter/material.dart';

class CarouselIntegrated extends StatelessWidget {
  final List<Widget> contentList;
  final Alignment? indexerAlignment;
  final EdgeInsetsGeometry? indexerPadding;

  const CarouselIntegrated({
    super.key,
    required this.contentList,
    this.indexerAlignment,
    this.indexerPadding,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Stack(
      fit: StackFit.expand,
      children: [
        CarouselSlider(
          options: CarouselOptions(
              autoPlay: true,
              autoPlayAnimationDuration: const Duration(seconds: 1),
              // autoPlayCurve: Curves.fastLinearToSlowEaseIn,
              autoPlayInterval: const Duration(seconds: 5),
              // enlargeCenterPage: true,
              viewportFraction: 1,
              height: size.height,
              enableInfiniteScroll: true,
              // enlargeStrategy: CenterPageEnlargeStrategy.height,
              aspectRatio: 1,
              onPageChanged: (index, reason) {
                // setState(() {
                //   _current = index;
                // });
              }),
          // items: imageSliders,
          items: contentList,
        ),
        Align(
          alignment: indexerAlignment ?? Alignment.bottomLeft,
          child: Padding(
            padding: indexerPadding ?? const EdgeInsets.all(15),
            child: const SwitchIndexerDots(
              listItemCount: 4,
              currentIndex: 1,
              currentDotColor: Colors.white,
              unselectedDotcolor: Colors.white60,
            ),
          ),
        ),
      ],
    );
  }
}
