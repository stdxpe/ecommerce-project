import 'package:flutter/material.dart';

import 'package:ecommerce_project/ui/widgets/buttons/button_circular_main.dart';
import 'package:ecommerce_project/ui/widgets/buttons/button_main.dart';
import 'package:ecommerce_project/utilities/k_color_palette.dart';
import 'package:ecommerce_project/utilities/k_constants.dart';
import 'package:ecommerce_project/utilities/k_strings_en.dart';

class BottomSheetButtonSetAddOrLike extends StatelessWidget {
  final Function onPressedMainButton;
  final Function onPressedCircularButton;
  final String? buttonText;
  final double? paddingHorizontalMain;
  final double? paddingTop;
  final double? paddingBottom;
  final double? paddingButtonTop;
  const BottomSheetButtonSetAddOrLike({
    required this.onPressedMainButton,
    required this.onPressedCircularButton,
    this.buttonText = Strings.kStringButtonContinue,
    this.paddingHorizontalMain = Constants.kPaddingButtonHorizontalMain,
    this.paddingTop = Constants.kPaddingButtonTopMain,
    this.paddingBottom = Constants.kPaddingButtonBottomMain,
    this.paddingButtonTop = Constants.kPaddingButtonBottomMain,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Card(
      margin: EdgeInsets.zero,
      elevation: 10,
      child: Container(
        width: size.width,
        decoration: BoxDecoration(
          color: ColorPalette.kColorModalBottomSheet,
          boxShadow: [
            BoxShadow(
              color: Colors.black54.withOpacity(0.15),
              spreadRadius: 0.5,
              blurRadius: 10,
              offset: const Offset(0, 0),
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.only(
            left: paddingHorizontalMain!,
            right: paddingHorizontalMain!,
            top: paddingTop!,
            bottom: paddingBottom!,
          ),
          child: Row(
            children: [
              Expanded(
                child: ButtonMain(
                  onPressed: () {
                    onPressedMainButton();
                  },
                  text: buttonText,
                  buttonColor: ColorPalette.kColorDarkButton,
                  textColor: Colors.white,
                  paddingHorizontal: 0,
                ),
              ),
              const SizedBox(width: 15),
              ButtonCircularMain(
                onPressed: () {
                  onPressedCircularButton();
                },
                icon: Icons.favorite,
                iconColor: Colors.red,
                buttonSize: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
