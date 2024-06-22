import 'package:flutter/material.dart';

import 'package:ecommerce_project/ui/widgets/buttons/icon_buttons/shopping_cart_icon_button.dart';
import 'package:ecommerce_project/ui/widgets/titles/title_app_bar_main.dart';

class SliverAppBarMain extends StatelessWidget {
  final Color? backgroundColor;
  final bool? automaticallyImplyLeading;
  final bool? useTitle;
  final bool? useShoppingCartButton;

  const SliverAppBarMain({
    super.key,
    this.backgroundColor = Colors.white,
    this.automaticallyImplyLeading = false,
    this.useShoppingCartButton = true,
    this.useTitle = false,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      iconTheme: const IconThemeData(color: Colors.black87, size: 24),
      // floating: true,
      // snap: true,
      // expandedHeight: 50,
      automaticallyImplyLeading: automaticallyImplyLeading!,
      backgroundColor: backgroundColor,
      foregroundColor: backgroundColor,
      surfaceTintColor: backgroundColor,
      scrolledUnderElevation: 0,
      pinned: true,
      centerTitle: false,
      title: useTitle! ? const TitleAppBarMain() : Container(),
      actions: [
        if (useShoppingCartButton!) const ShoppingCartIconButton(),
      ],
    );
  }
}
