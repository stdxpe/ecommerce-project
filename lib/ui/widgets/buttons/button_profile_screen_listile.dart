import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:ecommerce_project/utilities/k_text_styles.dart';

class ButtonProfileScreenListile extends StatelessWidget {
  final String title;
  final Function() onPressed;
  final IconData iconData;

  const ButtonProfileScreenListile({
    required this.title,
    required this.onPressed,
    required this.iconData,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPressed();
      },
      child: Container(
          // color: Colors.red.withOpacity(0.5),
          color: Colors.transparent,
          padding: const EdgeInsets.symmetric(vertical: 17.5, horizontal: 2.5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(iconData, size: 20),
                  SizedBox(width: 10),
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: kUserProfileListItemsMainTextStyle,
                  ),
                ],
              ),
              const Icon(
                CupertinoIcons.forward,
                size: 15,
                color: Colors.black54,
              ),
            ],
          )),
    );
  }
}
