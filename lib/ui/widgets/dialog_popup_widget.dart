import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:ecommerce_project/ui/widgets/dialog_popup_card_stack.dart';
import 'package:ecommerce_project/utilities/k_constants.dart';

class DialogPopupWidget extends StatelessWidget {
  final BuildContext context;
  final String title;
  final String subtitle;
  final String buttonText;
  final String imageUrl;

  const DialogPopupWidget({
    required this.context,
    required this.title,
    required this.subtitle,
    required this.buttonText,
    required this.imageUrl,
    super.key,
  });

  Future<bool> showAlertDialog() async {
    return await showDialog(
          // useSafeArea: false,
          barrierColor: Colors.black.withOpacity(0.5),
          barrierDismissible: true,
          context: context,
          builder: (context) => this,
        ) ??

        /// Returns false by default, if barrierDismissible set to true,
        /// Otherwise, any other click on the page, instead of buttons, returns NULL.
        false;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 7.5, sigmaY: 7.5),
      child: AlertDialog(
        insetPadding: EdgeInsets.zero,
        contentPadding: EdgeInsets.zero,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        elevation: 2.5,
        shadowColor: Colors.white.withOpacity(0.05),
        surfaceTintColor: Colors.yellow,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Constants.kRadiusCardPrimary),
        ),
        // clipBehavior: Clip.hardEdge,
        // backgroundColor: Colors.transparent,
        titlePadding: EdgeInsets.zero,
        // insetPadding: EdgeInsets.all(10),
        // title: Text(dialogTitle),
        title: DialogPopupCardStack(
          title: title,
          subtitle: subtitle,
          imageUrl: imageUrl,
          buttonText: buttonText,
          cardHeight: size.height * 0.5,
          cardWidth: size.width * 0.75,
        ),
      ),
    );
  }
}
