import 'package:ecommerce_project/models/review.dart';
import 'package:ecommerce_project/ui/widgets/switch_total_rating_stars.dart';
import 'package:ecommerce_project/utilities/k_constants.dart';
import 'package:flutter/material.dart';

class ReviewWidgetSingle extends StatelessWidget {
  final Review review;
  const ReviewWidgetSingle({
    required this.review,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Card(
      margin: EdgeInsets.symmetric(vertical: 5),
      color: Colors.white,
      elevation: 2.5,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: Constants.kPaddingBetweenElementsMain * 2,
          vertical: Constants.kPaddingBetweenElementsMain * 3,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              foregroundImage: AssetImage(review.senderPhoto),
            ),
            const SizedBox(width: 15),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(review.senderName),
                  Padding(
                    padding: const EdgeInsets.only(right: 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SwitchTotalRatingStars(
                            rating: review.productRating, starSize: 15),
                        Text(review.createdAt),
                      ],
                    ),
                  ),
                  Text(
                    review.text,
                    maxLines: 5,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
