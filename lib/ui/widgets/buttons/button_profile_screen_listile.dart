import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:ecommerce_project/utilities/k_text_styles.dart';

class ButtonProfileScreenListile extends StatelessWidget {
  final String title;
  final Function() onPressed;

  const ButtonProfileScreenListile({
    required this.title,
    required this.onPressed,
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
          padding: const EdgeInsets.symmetric(vertical: 17.5, horizontal: 2.5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title,
                style: kUserProfileListItemsMainTextStyle,
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
