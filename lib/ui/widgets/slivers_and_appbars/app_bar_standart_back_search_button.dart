import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:ecommerce_project/ui/widgets/searchbox_custom_delegate.dart';

class AppBarStandartBackSearchButton extends StatelessWidget
    implements PreferredSizeWidget {
  final Color? backgroundColor;
  final bool? isOnlyBackButton;
  const AppBarStandartBackSearchButton({
    this.backgroundColor = Colors.transparent,
    this.isOnlyBackButton = false,
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
      backgroundColor: backgroundColor,
      foregroundColor: backgroundColor,
      surfaceTintColor: backgroundColor,
      leading: IconButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        icon: const Icon(
          CupertinoIcons.chevron_back,
          color: Colors.black,
          size: 24,
        ),
      ),
      actions: [
        if (!isOnlyBackButton!)
          IconButton(
            onPressed: () {
              showSearch(context: context, delegate: SearchBoxCustomDelegate());
            },
            icon: const Icon(
              CupertinoIcons.search,
              color: Colors.black,
              size: 24,
            ),
          ),
      ],
    );
  }
}
