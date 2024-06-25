import 'package:flutter/material.dart';

import 'package:ecommerce_project/utilities/k_color_palette.dart';
import 'package:ecommerce_project/utilities/k_constants.dart';
import 'package:ecommerce_project/utilities/k_text_styles.dart';

class SwitchPriceFilterRangeSlider extends StatefulWidget {
  const SwitchPriceFilterRangeSlider({super.key});

  @override
  State<SwitchPriceFilterRangeSlider> createState() =>
      _SwitchPriceFilterRangeSliderState();
}

class _SwitchPriceFilterRangeSliderState
    extends State<SwitchPriceFilterRangeSlider> {
  double currentMinValue = 1;
  double currentMaxValue = 90;
  RangeValues currentRangeValues = const RangeValues(150, 750);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red.withOpacity(0.5),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: Constants.kPaddingHorizontalMain,
              right: Constants.kPaddingHorizontalMain,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\$${currentRangeValues.start.toStringAsFixed(0)}',
                  style: kReviewScreenProductCardTextStyle.copyWith(height: 1),
                ),
                Text(
                  '\$${currentRangeValues.end.toStringAsFixed(0)}',
                  style: kReviewScreenProductCardTextStyle.copyWith(height: 1),
                ),
              ],
            ),
          ),
          RangeSlider(
            activeColor: ColorPalette.kColorDarkButton,
            inactiveColor: Colors.black26,
            min: 0,
            max: 1000,
            values: currentRangeValues,
            onChanged: (value) {
              setState(() {
                currentRangeValues = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
