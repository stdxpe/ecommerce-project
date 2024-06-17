import 'package:flutter/material.dart';

import 'package:ecommerce_project/ui/widgets/button_circular_main.dart';
import 'package:ecommerce_project/ui/screens/shopping_cart_screen.dart';
import 'package:ecommerce_project/ui/screens/wishlist_screen.dart';
import 'package:ecommerce_project/ui/widgets/platform_adaptive_widgets/platform_adaptive_navigator.dart';
import 'package:flutter_svg/svg.dart';

class SliverAppBarMain extends StatelessWidget {
  const SliverAppBarMain({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      // floating: true,
      // snap: true,
      // expandedHeight: 50,
      automaticallyImplyLeading: false,
      pinned: true,
      backgroundColor: Colors.white,

      /// PROFILE ICON
      leading: Container(
        margin: const EdgeInsets.all(10),
        child: ButtonCircularMain(
          onPressed: () {
            PlatformAdaptiveNavigator().push(
              context,
              const WishlistScreen(),
            );
          },
          alternativeWidgetContent: SvgPicture.asset(
            'assets/icons/user-icon.svg',
            height: 15,
          ),
          iconColor: Colors.black,
          buttonColor: Colors.white,
        ),
      ),
      leadingWidth: 50,
      actions: [
        /// SEARCH ICON
        Container(
          margin: const EdgeInsets.all(10),
          child: ButtonCircularMain(
            onPressed: () {
              // PlatformAdaptiveNavigator().push(
              //   context,
              //   const SearchScreen(),
              // );
            },
            alternativeWidgetContent: SvgPicture.asset(
              'assets/icons/loupe-icon.svg',
              height: 15,
            ),
            buttonColor: Colors.white,
            buttonSize: 28,
          ),
        ),

        /// WISHLIST ICON
        Container(
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
        ),

        /// SHOPPING CART ICON
        Container(
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
            buttonSize: 28,
            iconSize: 17,
            isNotificationOn: true,
          ),
        ),
      ],
    );
  }
}
