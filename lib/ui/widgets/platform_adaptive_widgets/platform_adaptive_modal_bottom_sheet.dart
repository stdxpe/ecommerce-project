import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:ecommerce_project/ui/widgets/platform_adaptive_widgets/i_platform_adaptive_builder.dart';

// Usage Example:
// var result = await PlatformAdaptiveModalBottomSheet(
//     context: context,
//     // modalBottomSheetText: 'Your Post Updated Successfully!',
//     modalBottomSheetText:
//         'Updated Successfully!Updated Successfully!Updated Successfully!Updated Successfully!Updated Successfully!Updated Successfully!Updated Successfully!Updated Successfully!',

//     mainButtonText: 'OK',
//   ).showMyModalBottomSheet();
//   print(result);

class PlatformAdaptiveModalBottomSheet extends IPlatformAdaptiveBuilder {
  const PlatformAdaptiveModalBottomSheet({
    required this.context,
    required this.modalBottomSheetText,
    required this.mainButtonText,
    super.key,
  });

  final BuildContext context;
  final String modalBottomSheetText;
  final String mainButtonText;

  Future<bool> showMyModalBottomSheet() async {
    return await showCupertinoModalPopup(
            barrierDismissible: true,
            barrierColor: Colors.black.withOpacity(0.4),
            context: context,
            builder: (context) {
              return this;
            }) ??

        /// Pressing the Button returns true.
        /// Any other click on the page, instead of the button, returns NULL.
        /// Returns false by default, if barrierDismissible set to true,
        false;
  }

  @override
  Widget buildMaterial(BuildContext context) {
    return BottomSheet(
      // constraints: BoxConstraints.expand(),
      constraints: BoxConstraints.loose(const Size.fromHeight(80)),
      // constraints: BoxConstraints.tightForFinite(height: 100),
      enableDrag: false,
      backgroundColor: Colors.red,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(0.0)),
      ),
      onClosing: () {
        // Navigator.of(context).pop(false);
      },
      builder: (context) => Container(
        // constraints: BoxConstraints.loose(Size.fromHeight(60)),
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 5,
              child: Align(
                alignment: Alignment.centerLeft,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        modalBottomSheetText,
                        textAlign: TextAlign.start,
                        maxLines: 4,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  child: Text(mainButtonText),
                  onPressed: () {
                    Navigator.of(context).pop(true);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget buildCupertino(BuildContext context) {
    return CupertinoTheme(
      data: const CupertinoThemeData(),
      child: CupertinoActionSheet(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 5,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  textAlign: TextAlign.start,
                  modalBottomSheetText,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Align(
                alignment: Alignment.centerRight,
                child: CupertinoButton(
                  child: Text(mainButtonText),
                  onPressed: () {
                    Navigator.of(context).pop(true);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
