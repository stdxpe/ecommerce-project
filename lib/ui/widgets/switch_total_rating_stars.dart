import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class SwitchTotalRatingStars extends StatelessWidget {
  final double rating;
  final double? starSize;
  final double? starPadding;
  final Color? ratedStarColor;
  final Color? unratedStarColor;

  const SwitchTotalRatingStars({
    required this.rating,
    this.starSize = 20,
    this.ratedStarColor = Colors.amber,
    this.unratedStarColor = Colors.black26,
    this.starPadding = 0,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      initialRating: rating,
      minRating: 0.5,
      itemSize: starSize!,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      glowColor: Colors.red,
      unratedColor: unratedStarColor,
      ignoreGestures: true,
      itemPadding: EdgeInsets.symmetric(horizontal: starPadding!),
      itemBuilder: (context, _) => Icon(
        Icons.star,
        color: ratedStarColor,
      ),
      onRatingUpdate: (value) {},
    );
  }
}
