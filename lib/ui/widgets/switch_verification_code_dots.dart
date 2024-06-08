import 'package:flutter/material.dart';

class SwitchVerificationCodeDots extends StatelessWidget {
  final int itemCount;
  final int currentIndex;
  final double? dotSize;
  final double? dotSpacing;

  const SwitchVerificationCodeDots({
    required this.itemCount,
    required this.currentIndex,
    this.dotSize = 30.0,
    this.dotSpacing = 10.0,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          for (var i = 0; i < itemCount; i++)
            if (i < currentIndex)
              Container(
                width: dotSize,
                height: dotSize,
                margin: EdgeInsets.symmetric(
                  horizontal: dotSpacing!,
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black.withOpacity(0.9),
                ),
              )
            else
              Container(
                width: dotSize,
                height: dotSize,
                margin: EdgeInsets.symmetric(
                  horizontal: dotSpacing!,
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black.withOpacity(0.2),
                ),
              )
        ],
      ),
    );
  }
}
