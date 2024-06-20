import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:ecommerce_project/ui/widgets/buttons/button_circular_main.dart';
import 'package:flutter_svg/svg.dart';

class AppBarStandartBackShareButton extends StatelessWidget
    implements PreferredSizeWidget {
  final Color? backgroundColor;
  const AppBarStandartBackShareButton({
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
      actions: [
        Container(
          margin: const EdgeInsets.all(10),
          child: ButtonCircularMain(
            onPressed: () {},
            alternativeWidgetContent: SvgPicture.asset(
              'assets/icons/share-1-icon.svg',
              color: Colors.white.withOpacity(0.85),
              height: 15,
            ),
            // elevationColor: Colors.transparent,
            buttonColor: Colors.black.withOpacity(0.15),
            buttonSize: 28,
          ),
        ),
      ],
    );
  }
}
