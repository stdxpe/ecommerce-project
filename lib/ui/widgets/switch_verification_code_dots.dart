import 'package:flutter/material.dart';

class SwitchVerificationCodeDots extends StatelessWidget {
  final int itemCount;
  final int currentIndex;
  final double? dotSize;
  final double? dotSpacing;
  final Color? emptyDotColor;
  final Color? enteredDotColor;

  const SwitchVerificationCodeDots({
    required this.itemCount,
    required this.currentIndex,
    this.dotSize = 30.0,
    this.dotSpacing = 12.0,
    this.emptyDotColor,
    this.enteredDotColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
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
                    color: enteredDotColor ?? Colors.black.withOpacity(0.9),
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
                    color: emptyDotColor ?? Colors.black.withOpacity(0.15),
                  ),
                )
          ],
        ),
      ),
    );
  }
}
