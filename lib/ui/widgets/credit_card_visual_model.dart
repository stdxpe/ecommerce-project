import 'package:flutter/material.dart';

import 'package:ecommerce_project/utilities/k_constants.dart';
import 'package:ecommerce_project/utilities/k_text_styles.dart';

class CreditCardVisualModel extends StatelessWidget {
  // TODO: Credit Card Model to-be-added
  final double width;
  final double height;
  final double? elevation;
  final double? paddingMain;
  final TextStyle? textStylePrimary;
  final TextStyle? textStyleSecondary;

  const CreditCardVisualModel({
    required this.width,
    required this.height,
    this.paddingMain = 15,
    this.elevation = 1.5,
    this.textStylePrimary = kCardTextStylePrimary,
    this.textStyleSecondary = kCardTextStyleSecondary,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      // elevation: elevation,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Constants.kRadiusCardPrimary),
      ),
      clipBehavior: Clip.hardEdge,
      child: Stack(
        children: [
          Image.asset(
            // aspectRatio: cardWidth/cardHeight,
            height: height,
            width: width,
            'assets/images/world_map_dots.jpg',
            fit: BoxFit.cover,
          ),
          Container(
            height: height,
            width: width,
            // color: Colors.red.withOpacity(0.5),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.black.withAlpha(255).withOpacity(0.9),
                  Colors.black.withAlpha(255).withOpacity(0.5),
                  Colors.white.withAlpha(255).withOpacity(0.5),
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
            padding: EdgeInsets.symmetric(
              horizontal: paddingMain!,
              vertical: paddingMain!,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'VISA',
                  style: kCreditCardTextStyle.copyWith(fontSize: 25),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '5201 2039 7621 9801',
                          style: kCreditCardTextStyle.copyWith(fontSize: 10),
                        ),
                        SizedBox(height: paddingMain! * 2),
                        Text(
                          'Miranda West',
                          style: kCreditCardTextStyle.copyWith(
                              fontSize: 15, letterSpacing: 1.2),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '471',
                          style: kCreditCardTextStyle.copyWith(fontSize: 13),
                        ),
                        Text(
                          '01/24',
                          style: kCreditCardTextStyle.copyWith(fontSize: 15),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
