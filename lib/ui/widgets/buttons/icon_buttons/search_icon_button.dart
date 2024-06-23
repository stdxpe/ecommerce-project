import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchIconButton extends StatelessWidget {
  final Function onPressed;
  final double iconThemeSize;
  final Color iconThemeColor;
  const SearchIconButton({
    required this.onPressed,
    required this.iconThemeSize,
    required this.iconThemeColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        onPressed();
      },
      icon: Icon(
        CupertinoIcons.search,
        color: iconThemeColor,
        size: iconThemeSize,
      ),
    );
  }
}