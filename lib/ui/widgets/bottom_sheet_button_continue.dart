import 'package:ecommerce_project/utilities/k_strings_en.dart';
import 'package:flutter/material.dart';

import 'package:ecommerce_project/ui/widgets/button_main.dart';
import 'package:ecommerce_project/utilities/k_color_palette.dart';
import 'package:ecommerce_project/utilities/k_constants.dart';

class BottomSheetButtonContinue extends StatelessWidget {
  const BottomSheetButtonContinue({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      padding: const EdgeInsets.only(
        left: Constants.kPaddingHorizontalMainButton,
        right: Constants.kPaddingHorizontalMainButton,
        top: Constants.kPaddingHorizontalMain,
        bottom: Constants.kPaddingHorizontalMainButton,
      ),
      decoration: BoxDecoration(
        color: ColorPalette.kColorModalBottomSheet,
        // color: Colors.green.withOpacity(0.5),
        boxShadow: [
          BoxShadow(
            color: Colors.black54.withOpacity(0.15),
            spreadRadius: 0.5,
            blurRadius: 10,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ButtonMain(
              onPressed: () {
                // PlatformAdaptiveNavigator().push(context, TestScreen());
              },
              text: Strings.kStringButtonContinue,
              buttonColor: ColorPalette.kColorDarkButton,
              textColor: Colors.white,
              paddingHorizontal: 0,
            ),
          ),
        ],
      ),
    );
  }
}
