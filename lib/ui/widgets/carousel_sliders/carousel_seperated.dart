import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_project/utilities/k_text_styles.dart';
import 'package:flutter/material.dart';

class CarouselSeperated extends StatelessWidget {
  const CarouselSeperated({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return CarouselSlider.builder(
      itemCount: 15,
      options: CarouselOptions(
        autoPlay: true,
        enlargeCenterPage: true,
        viewportFraction: 0.7,
        enableInfiniteScroll: true,
        enlargeStrategy: CenterPageEnlargeStrategy.height,
        aspectRatio: 1.05,
        autoPlayInterval: const Duration(seconds: 4),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeFactor: 0.4,
        scrollDirection: Axis.horizontal,
      ),
      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
          Container(
        margin: const EdgeInsetsDirectional.all(20),
        height: size.height * 0.35,
        width: size.width * 0.65,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.red,
          boxShadow: [kBoxShadowContainer],
        ),
      ),
    );
  }
}
