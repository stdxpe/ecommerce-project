import 'package:flutter/material.dart';

class SingleColorPickerCircularButton extends StatelessWidget {
  final Color itemColor;
  final bool isSelected;
  final double? itemSize;

  const SingleColorPickerCircularButton({
    required this.itemColor,
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
        color: itemColor,
        border: Border.all(
          width: isSelected ? 4 : 0,
          color: Colors.white,
          style: BorderStyle.solid,
          strokeAlign: BorderSide.strokeAlignInside,
        ),
      ),
    );
  }
}
