import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:ecommerce_project/utilities/k_text_styles.dart';

class ButtonProfileScreenSwitchTile extends StatelessWidget {
  final String title;
  final bool switchValue;

  const ButtonProfileScreenSwitchTile({
    required this.title,
    required this.switchValue,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.red.withOpacity(0.5),
      padding: const EdgeInsets.symmetric(vertical: 7.5, horizontal: 2.5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: kUserProfileListItemsMainTextStyle,
          ),
          CupertinoSwitch(
            onChanged: (value) {},
            value: switchValue,
          ),
        ],
      ),
    );
  }
}
