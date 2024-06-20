import 'package:flutter/material.dart';

class StaggeredGridCardComponent extends StatelessWidget {
  final double height;
  final double width;
  final int widthItemCount;
  final int heightItemCount;

  const StaggeredGridCardComponent({
    required this.height,
    required this.width,
    super.key,
    required this.widthItemCount,
    required this.heightItemCount,
  });

  @override
  Widget build(BuildContext context) {
    double squareSize = width / widthItemCount;
    return AspectRatio(
      aspectRatio: width / height,
      child: Container(
        padding: const EdgeInsets.all(0.0),
        height: height,
        width: width,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                color: Colors.green.withOpacity(0.5),
                height: squareSize * 2,
                width: squareSize * 2,
                child: Image.asset(
                  'assets/images/pose5.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                color: Colors.purple.withOpacity(0.5),
                height: squareSize,
                width: squareSize,
                child: Image.asset(
                  'assets/images/pose7.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                color: Colors.amberAccent.withOpacity(0.5),
                height: squareSize,
                width: squareSize,
                child: Image.asset(
                  'assets/images/pose3.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
