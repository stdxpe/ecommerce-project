import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';

class PlatformAdaptiveNavigator {
//   ///  Usage Example:
// //  PlatformAdaptiveNavigator().push(context, screen);
// //  PlatformAdaptiveNavigator().pushReplacement(context, screen);
// //  PlatformAdaptiveNavigator().pushAndRemoveUntil(context, screen);

  void push(BuildContext context, Widget pushScreen) {
    if (Platform.isIOS) {
      Navigator.of(context)
          .push(CupertinoPageRoute(builder: (context) => pushScreen));
    } else {
      /// ELSE Covers Both: Platform.isAndroid or Platform.isFuchsia
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => pushScreen));
    }
  }

  void pushReplacement(BuildContext context, Widget pushScreen) {
    if (Platform.isIOS) {
      Navigator.of(context).pushReplacement(
        CupertinoPageRoute(builder: (context) => pushScreen),
      );
    } else {
      /// ELSE Covers Both: Platform.isAndroid or Platform.isFuchsia
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => pushScreen),
      );
    }
  }

  void pushAndRemoveUntil(BuildContext context, Widget pushScreen) {
    if (Platform.isIOS) {
      Navigator.of(context).pushAndRemoveUntil(
        CupertinoPageRoute(builder: (context) => pushScreen),
        (route) => false,
      );
    } else {
      /// ELSE Covers Both: Platform.isAndroid or Platform.isFuchsia
      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => pushScreen),
        (route) => false,
      );
    }
  }
}
