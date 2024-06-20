import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:ecommerce_project/ui/widgets/buttons/button_circular_main.dart';

class AppBarStandartBackButton extends StatelessWidget
    implements PreferredSizeWidget {
  final Color? backgroundColor;

  const AppBarStandartBackButton({
    this.backgroundColor = Colors.transparent,
    super.key,
  });

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
      leading: Container(
        margin: const EdgeInsets.all(10),
        child: ButtonCircularMain(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: CupertinoIcons.chevron_back,
          buttonColor: Colors.black.withOpacity(0.15),
          iconColor: Colors.white,
          buttonSize: 28,
          iconSize: 22,
        ),
      ),
      leadingWidth: 45,
    );
  }
}
