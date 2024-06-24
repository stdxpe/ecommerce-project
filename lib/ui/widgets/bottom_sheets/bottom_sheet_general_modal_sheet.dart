import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:ecommerce_project/utilities/k_constants.dart';

class BottomSheetGeneralModalSheet {
  Future show({
    required BuildContext contextParam,
    required Size sizeParam,
    double sizeHeightPercent = 0.75,
    required Widget screen,
  }) async {
    showCupertinoModalPopup(
      // barrierDismissible: false,
      barrierColor: Colors.black.withOpacity(0.7),
      context: contextParam,
      builder: (context) {
        return BottomSheet(
          elevation: 5,
          constraints: BoxConstraints.loose(
            Size.fromHeight(
              sizeParam.height * sizeHeightPercent,
            ),
          ),
          enableDrag: false,
          // backgroundColor: Colors.red,
          backgroundColor: Colors.white,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(
                Constants.kRadiusCardPrimary,
              ),
            ),
          ),
          onClosing: () {},
          builder: (context) {
            return Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: screen,
              // child:
              // PaymentShippingAddress(
              //   onPressedOptional: () {},
              //   onPressedMain: () {},
              // ),
            );
          },
        );
      },
    );
  }
}
