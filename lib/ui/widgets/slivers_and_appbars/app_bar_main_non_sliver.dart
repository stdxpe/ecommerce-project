import 'package:flutter/material.dart';

import 'package:ecommerce_project/ui/widgets/buttons/icon_buttons/search_icon_button.dart';
import 'package:ecommerce_project/ui/widgets/buttons/icon_buttons/share_icon_button.dart';
import 'package:ecommerce_project/ui/widgets/searchbox_custom_delegate.dart';
import 'package:ecommerce_project/ui/widgets/titles/title_app_bar_main.dart';

class AppBarMainNonSliver extends StatelessWidget
    implements PreferredSizeWidget {
  final bool? automaticallyImplyLeading;
  final bool? isSearchButtonIncluded;
  final bool? isShareButtonIncluded;
  final Color? backgroundColor;
  final bool? useTitle;
  final double? iconThemeSize;
  final Color? iconThemeColor;

  const AppBarMainNonSliver({
    this.backgroundColor = Colors.transparent,
    this.isSearchButtonIncluded = false,
    this.isShareButtonIncluded = false,
    this.automaticallyImplyLeading = false,
    this.useTitle = false,
    this.iconThemeSize = 24,
    this.iconThemeColor = Colors.black87,
    super.key,
  });

  /// TODO: Sizes gotta be .sp .w. h

  // const AppBarNonSliverStandart({super.key})
  //     : preferredSize = const Size.fromHeight(kToolbarHeight);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(
        color: iconThemeColor,
        size: iconThemeSize!,
        // shadows:
      ),
      backgroundColor: backgroundColor,
      foregroundColor: backgroundColor,
      surfaceTintColor: backgroundColor,
      scrolledUnderElevation: 0,
      automaticallyImplyLeading: automaticallyImplyLeading!,
      centerTitle: false,
      title: useTitle! ? const TitleAppBarMain() : Container(),
      actions: [
        if (isSearchButtonIncluded!)
          SearchIconButton(
            iconThemeColor: iconThemeColor!,
            iconThemeSize: iconThemeSize!,
            onPressed: () {
              showSearch(context: context, delegate: SearchBoxCustomDelegate());
            },
          ),
        if (isShareButtonIncluded!)
          ShareIconButton(
            iconThemeColor: iconThemeColor!,
            iconThemeSize: iconThemeSize!,
            onPressed: () {},
          ),
      ],
    );
  }
}
