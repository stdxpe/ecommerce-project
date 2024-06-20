import 'package:flutter/material.dart';

class StaggeredGridCardComponent2 extends StatelessWidget {
  final double height;
  final double width;
  final int widthItemCount;
  final int heightItemCount;

  const StaggeredGridCardComponent2({
    required this.height,
    required this.width,
    super.key,
    required this.widthItemCount,
    required this.heightItemCount,
  });

  @override
  Widget build(BuildContext context) {
    // double squareSize = width / widthItemCount;
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
                height: height,
                width: width * (1 / 4),
                child: Image.asset(
                  'assets/images/pose1.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              left: width * (1 / 4),
              child: Container(
                color: Colors.yellow.withOpacity(0.5),
                height: height,
                width: width * (1 / 4),
                child: Image.asset(
                  'assets/images/pose0.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              left: width * (2 / 4),
              child: Container(
                color: Colors.lightBlue.withOpacity(0.5),
                height: height / 2,
                width: width / 4,
                child: Image.asset(
                  'assets/images/pose2.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              left: width * (2 / 4),
              bottom: 0,
              child: Container(
                color: Colors.orange.withOpacity(0.5),
                height: height / 2,
                width: width / 4,
                child: Image.asset(
                  'assets/images/pose3.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                color: Colors.purple.withOpacity(0.5),
                height: height / 2,
                width: width / 4,
                child: Image.asset(
                  'assets/images/pose4.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                color: Colors.red.withOpacity(0.5),
                height: height / 2,
                width: width / 4,
                child: Image.asset(
                  'assets/images/pose5.jpg',
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
