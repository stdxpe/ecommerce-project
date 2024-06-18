import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:ecommerce_project/ui/widgets/button_circular_main.dart';

class AppBarNonSliverStandart extends StatelessWidget
    implements PreferredSizeWidget {
  const AppBarNonSliverStandart({super.key});

  // const AppBarNonSliverStandart({super.key})
  //     : preferredSize = const Size.fromHeight(kToolbarHeight);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      foregroundColor: Colors.white,
      surfaceTintColor: Colors.white,
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
