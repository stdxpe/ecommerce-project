import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:ecommerce_project/ui/screens/wishlist_screen.dart';
import 'package:ecommerce_project/ui/widgets/buttons/button_circular_main.dart';
import 'package:ecommerce_project/ui/widgets/platform_adaptive_widgets/platform_adaptive_navigator.dart';

class WishlistIconButton extends StatelessWidget {
  const WishlistIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: ButtonCircularMain(
        onPressed: () {
          PlatformAdaptiveNavigator().push(
            context,
            const WishlistScreen(),
          );
        },
        alternativeWidgetContent: SvgPicture.asset(
          'assets/icons/heart-icon.svg',
          height: 15,
        ),
        iconColor: Colors.black,
        buttonSize: 28,
        isNotificationOn: true,
      ),
    );
  }
}
