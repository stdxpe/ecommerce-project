import 'package:flutter/material.dart';

import 'package:ecommerce_project/ui/screens/shopping_cart_screen.dart';
import 'package:ecommerce_project/ui/widgets/buttons/button_circular_main.dart';
import 'package:ecommerce_project/ui/widgets/platform_adaptive_widgets/platform_adaptive_navigator.dart';

class ShoppingCartIconButton extends StatelessWidget {
  const ShoppingCartIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: ButtonCircularMain(
        onPressed: () {
          PlatformAdaptiveNavigator().push(
            context,
            const ShoppingCartScreen(),
          );
        },
        icon: Icons.shopping_bag_outlined,
        iconColor: Colors.black,
        buttonSize: 40,
        iconSize: 23,
        isNotificationOn: true,
      ),
    );
  }
}
