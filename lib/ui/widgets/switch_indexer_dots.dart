import 'package:flutter/material.dart';

class SwitchIndexerDots extends StatelessWidget {
  final int listItemCount;
  final int currentIndex;
  final double? dotSize;
  final double? dotSpacing;
  final double? currentDotSize;
  final Color? currentDotColor;
  final Color? unselectedDotcolor;

  const SwitchIndexerDots({
    required this.listItemCount,
    required this.currentIndex,
    super.key,
    this.dotSize = 6.0,
    this.currentDotSize = 13.0,
    this.dotSpacing = 4.0,
    this.currentDotColor,
    this.unselectedDotcolor,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          for (var i = 0; i <= listItemCount; i++)
            if (i != currentIndex)
              Container(
                width: dotSize,
                height: dotSize,
                margin: EdgeInsets.symmetric(
                  horizontal: dotSpacing!,
                ),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: unselectedDotcolor ?? Colors.black.withOpacity(0.4),
                ),
              )
            else
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: currentDotSize,
                    height: currentDotSize,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: currentDotColor ?? Colors.black,
                        width: 1.25,
                      ),
                    ),
                    margin: EdgeInsets.symmetric(
                      horizontal: dotSpacing!,
                    ),
                  ),
                  Container(
                    width: dotSize! + 1,
                    height: dotSize! + 1,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: currentDotColor ?? Colors.black87,
                    ),
                  ),
                ],
              )
        ],
      ),
    );
  }
}
