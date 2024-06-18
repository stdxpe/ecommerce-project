import 'package:flutter/material.dart';

import 'package:ecommerce_project/utilities/k_text_styles.dart';
import 'package:ecommerce_project/models/review.dart';
import 'package:ecommerce_project/ui/widgets/switch_total_rating_stars.dart';
import 'package:ecommerce_project/utilities/k_constants.dart';

class ReviewWidgetSingle extends StatelessWidget {
  final Review review;
  const ReviewWidgetSingle({
    required this.review,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(
          vertical: Constants.kPaddingBetweenElementsMain),
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
                  Text(
                    review.senderName,
                    style: kReviewScreenReviewTextStyle,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 6.0, bottom: 7.5, top: 2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SwitchTotalRatingStars(
                                rating: review.productRating, starSize: 15),
                            const SizedBox(width: 7.5),
                            Text(review.productRating.toString())
                          ],
                        ),
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
