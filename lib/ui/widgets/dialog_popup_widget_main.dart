import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:ecommerce_project/utilities/k_constants.dart';

class DialogPopupWidgetMain extends StatelessWidget {
  final BuildContext context;
  final Widget content;

  const DialogPopupWidgetMain({
    required this.context,
    required this.content,
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
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 7.5, sigmaY: 7.5),
      child: AlertDialog(
        insetPadding: EdgeInsets.zero,
        contentPadding: EdgeInsets.zero,
        clipBehavior: Clip.hardEdge,
        elevation: 2.5,
        shadowColor: Colors.white.withOpacity(0.05),
        surfaceTintColor: Colors.red,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Constants.kRadiusDialogPopupCard),
        ),
        title: content,
        titlePadding: EdgeInsets.zero,
      ),
    );
  }
}
