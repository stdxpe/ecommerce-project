import 'dart:io';
import 'package:flutter/widgets.dart';

abstract class IPlatformAdaptiveBuilder extends StatelessWidget {
  const IPlatformAdaptiveBuilder({super.key});

  Widget buildMaterial(BuildContext context);
  Widget buildCupertino(BuildContext context);

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return buildCupertino(context);
    } else {
      /// ELSE Covers Both: Platform.isAndroid or Platform.isFuchsia
      return buildMaterial(context);
    }
  }
}
