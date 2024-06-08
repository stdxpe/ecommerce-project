import 'package:flutter/material.dart';

class PlatformAdaptiveSnackbar {
  const PlatformAdaptiveSnackbar({
    required this.context,
    required this.snackbarText,
    required this.mainButtonText,
    this.onPressedSnackBarButton,
  });

  final BuildContext context;
  final String snackbarText;
  final String mainButtonText;
  final void Function()? onPressedSnackBarButton;

  //  // Usage Example:
  //  // var result = await
  //   PlatformAdaptiveSnackbar(
  //     context: context,
  //     snackbarText:
  //         'Updated Successfully!Updated Successfully!Updated Successfully!Updated Successfully!Updated Successfully!Updated Successfully!Updated Successfully!Updated Successfully!',
  //     // 'Your Post Updated Successfully!',
  //     mainButtonText: 'OK',
  //   ).showSnackbar();

  void showSnackbar() {
    ScaffoldMessenger.of(context).removeCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      // TODO: Uncomment this line, when you get rid of Floating Action Buttons
      // behavior: SnackBarBehavior.floating,
      behavior: SnackBarBehavior.fixed,
      // TODO: kThemeColor.snackbarColor connect
      // backgroundColor: Colors.black,
      duration: const Duration(seconds: 4),
      content: Text(
        snackbarText,
        maxLines: 4,
        overflow: TextOverflow.ellipsis,
      ),

      /// SnackBar with Cupertino Button
      // content: Row(
      //   children: [
      //     Text(
      //       snackbarText,
      //       maxLines: 4,
      //       overflow: TextOverflow.ellipsis,
      //     ),
      //     CupertinoDialogAction(
      //       child: Text(mainButtonText),
      //       onPressed: () {
      //         if (onPressedSnackBarButton != null) {
      //           onPressedSnackBarButton;
      //         }
      //         ScaffoldMessenger.of(context).hideCurrentSnackBar();
      //       },
      //     ),
      //   ],
      // ),
      action: SnackBarAction(
        label: mainButtonText,
        onPressed: () {
          if (onPressedSnackBarButton != null) {
            onPressedSnackBarButton;
          }
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
        },
      ),
    ));
  }
}
