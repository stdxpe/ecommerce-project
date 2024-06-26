import 'package:flutter/material.dart';

import 'package:ecommerce_project/ui/widgets/buttons/button_main.dart';
import 'package:ecommerce_project/utilities/k_color_palette.dart';
import 'package:ecommerce_project/utilities/k_constants.dart';
import 'package:ecommerce_project/utilities/k_strings_en.dart';

class BottomSheetButtonFilters extends StatelessWidget {
  final Function() onPressedMain;
  final Function() onPressedOptional;

  final String? mainButtonText;
  final String? optionalButtonText;

  final double? paddingHorizontalMain;
  final double? paddingTop;
  final double? paddingBottom;
  final double? paddingButtonTop;

  const BottomSheetButtonFilters({
    required this.onPressedMain,
    required this.onPressedOptional,
    this.mainButtonText = Strings.kStringFiltersButtonApply,
    this.optionalButtonText = Strings.kStringFiltersButtonClear,
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
          child: Column(
            children: [
              Container(
                // color: Colors.red.withOpacity(0.5),
                child: Row(
                  children: [
                    /// CLEAR BUTTON
                    Expanded(
                      child: ButtonMain(
                        paddingHorizontal: 0,
                        paddingVertical: 0,
                        text: optionalButtonText,
                        buttonColor: ColorPalette.kColorModalBottomSheet,
                        borderWidth: 1.5,
                        onPressed: () {
                          onPressedOptional();
                        },
                      ),
                    ),

                    const SizedBox(
                        width: Constants.kPaddingBetweenElementsMain * 2),

                    /// MAIN BUTTON
                    Expanded(
                      child: ButtonMain(
                        paddingHorizontal: 0,
                        paddingVertical: 0,
                        text: mainButtonText,
                        textColor: Colors.white,
                        buttonColor: ColorPalette.kColorDarkButton,
                        onPressed: () {
                          onPressedMain();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
