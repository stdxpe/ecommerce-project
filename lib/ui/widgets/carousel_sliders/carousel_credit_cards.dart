import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:ecommerce_project/ui/widgets/cards/credit_card_visual_model.dart';
import 'package:ecommerce_project/utilities/k_constants.dart';

class CarouselCreditCards extends StatelessWidget {
  final double? paddingMain;
  final double? aspectRatioVerticalToHorizontal;
  final double? aspectRatioHorizontalToVertical;

  const CarouselCreditCards({
    this.paddingMain = Constants.kPaddingButtonHorizontalMain,
    this.aspectRatioHorizontalToVertical = 1.5846394984,
    this.aspectRatioVerticalToHorizontal = 0.6310583581,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double creditCardWidth = (size.width - paddingMain!);
    double creditCardHeight =
        creditCardWidth * aspectRatioVerticalToHorizontal!;

    return SizedBox(
      // color: Colors.red.withOpacity(0.5),
      child: CarouselSlider.builder(
        itemCount: 3,
        options: CarouselOptions(
          enlargeCenterPage: true,
          viewportFraction: (creditCardWidth / size.width),
          // enableInfiniteScroll: false,
          // // aspectRatio: size.width / (size.width / 1.8),
          enlargeFactor: 0.3,
          enlargeStrategy: CenterPageEnlargeStrategy.scale,
          height: creditCardHeight,
        ),
        itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
            CreditCardVisualModel(
          width: creditCardWidth,
          height: creditCardHeight,
        ),
      ),
    );
  }
}
