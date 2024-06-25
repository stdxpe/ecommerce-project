import 'package:flutter/material.dart';

import 'package:ecommerce_project/utilities/k_color_palette.dart';

class SingleSizePickerCircularButton extends StatelessWidget {
  final String item;
  final bool isSelected;
  final double? itemSize;

  const SingleSizePickerCircularButton({
    required this.item,
    required this.isSelected,
    this.itemSize = 35,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.none,
      height: itemSize,
      width: itemSize,
      decoration: BoxDecoration(
        boxShadow: [
          if (isSelected)
            BoxShadow(
              color: Colors.black54.withOpacity(0.35),
              spreadRadius: 0.1,
              blurRadius: 10,
              offset: const Offset(0, 1),
            ),
        ],
        shape: BoxShape.circle,
        color: isSelected
            ? ColorPalette.kColorDarkButton
            : ColorPalette.kColorModalBottomSheet,
        border: Border.all(
          width: isSelected ? 4 : 0,
          color: Colors.white,
          style: BorderStyle.solid,
          strokeAlign: BorderSide.strokeAlignInside,
        ),
      ),
      child: Center(
        child: Text(
          item,
          style: TextStyle(
            fontSize: 14,
            fontWeight: isSelected ? FontWeight.w600 : FontWeight.w500,
            color: isSelected ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
