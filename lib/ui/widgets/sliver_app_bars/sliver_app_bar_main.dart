import 'package:flutter/material.dart';

import 'package:ecommerce_project/ui/screens/discover_screen.dart';
import 'package:ecommerce_project/ui/screens/wishlist_screen.dart';
import 'package:ecommerce_project/ui/widgets/button_close_icon.dart';
import 'package:ecommerce_project/ui/widgets/platform_adaptive_widgets/platform_adaptive_navigator.dart';

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
      // backgroundColor: Colors.red.withOpacity(0.5),
      leading: Container(
        margin: const EdgeInsets.all(10),
        child: ButtonCloseIcon(
          onPressed: () {
            // PlatformAdaptiveNavigator().push(
            //   context,
            //   const DiscoverScreen(),
            // );
          },
          iconSize: 17,
          buttonSize: 28,
          iconColor: Colors.purple,
        ),
      ),
      actions: [
        Container(
          margin: const EdgeInsets.all(10),
          child: ButtonCloseIcon(
            onPressed: () {
              // PlatformAdaptiveNavigator().push(
              //   context,
              //   const DiscoverScreen(),
              // );
            },
            iconSize: 17,
            buttonSize: 28,
            iconColor: Colors.blue,
          ),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          child: ButtonCloseIcon(
            onPressed: () {
              PlatformAdaptiveNavigator().push(
                context,
                const WishlistScreen(),
              );
            },
            iconSize: 17,
            buttonSize: 28,
            iconColor: Colors.black,
          ),
        ),
        Container(
          margin: const EdgeInsets.all(10),
          child: ButtonCloseIcon(
            iconColor: Colors.red,
            onPressed: () {
              PlatformAdaptiveNavigator().push(
                context,
                const DiscoverScreen(),
              );
            },
            iconSize: 17,
            buttonSize: 28,
          ),
        ),
      ],
    );
  }
}
