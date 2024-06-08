import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:ecommerce_project/ui/widgets/platform_adaptive_widgets/i_platform_adaptive_builder.dart';

class PlatformAdaptiveAlertDialog extends IPlatformAdaptiveBuilder {
  const PlatformAdaptiveAlertDialog({
    required this.context,
    required this.dialogTitle,
    required this.dialogText,
    required this.mainButtonText,
    this.optionalSecondaryButtonText,
    super.key,
  });

  final BuildContext context;
  final String dialogTitle;
  final String dialogText;
  final String mainButtonText;
  final String? optionalSecondaryButtonText;

  // Usage Example:
  // var result = await PlatformAdaptiveAlertDialog(
  //   context: context,
  //   dialogTitle: 'Update',
  //   dialogText: 'Your Post Updated Successfully',
  //   mainButtonText: 'OK',
  //   optionalSecondaryButtonText: 'Cancel',
  // ).showAlertDialog();

  // print('AlertDialog Resulted : $result');

  /// Waits for the choice of user.
  /// Returns true/false that depends on the button selection.
  Future<bool> showAlertDialog() async {
    return await showDialog(
          barrierDismissible: true,
          context: context,
          builder: (context) => this,
        ) ??

        /// Returns false by default, if barrierDismissible set to true,
        /// Otherwise, any other click on the page, instead of buttons, returns NULL.
        false;
  }

  /// TODO: Anything can be shown in showDialog, like Sale Commercials :)
  /// TODO: Here comes the showCupertinoAlertDialog? What's the difference b/ cup&stAlertDialog??

  @override
  Widget buildMaterial(BuildContext context) {
    return AlertDialog(
      title: Text(dialogTitle),
      content: Text(dialogText),
      actions: [
        if (optionalSecondaryButtonText != null)
          TextButton(
            child: Text(optionalSecondaryButtonText!),
            onPressed: () {
              // Navigator.of(context)
              //     .push(MaterialPageRoute(builder: (context) => TestScreen1()));
              Navigator.of(context).pop(false);
            },
          ),
        TextButton(
          child: Text(mainButtonText),
          onPressed: () {
            Navigator.of(context).pop(true);
          },
        ),
      ],
    );
  }

  @override
  Widget buildCupertino(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text(dialogTitle),
      content: Text(dialogText),
      actions: [
        if (optionalSecondaryButtonText != null)
          CupertinoDialogAction(
            child: Text(optionalSecondaryButtonText!),
            onPressed: () {
              Navigator.of(context).pop(false);
            },
          ),
        CupertinoDialogAction(
          isDefaultAction: true,
          child: Text(mainButtonText),
          onPressed: () {
            Navigator.of(context).pop(true);
          },
        ),
      ],
    );
  }
}
