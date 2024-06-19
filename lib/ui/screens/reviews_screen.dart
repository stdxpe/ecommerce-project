import 'package:flutter/material.dart';

import 'package:ecommerce_project/models/product.dart';
import 'package:ecommerce_project/models/review.dart';
import 'package:ecommerce_project/ui/widgets/bottom_sheet_button_set_add_or_like.dart';
import 'package:ecommerce_project/ui/widgets/product_card_horizontal_mini.dart';
import 'package:ecommerce_project/ui/widgets/review_widget_single.dart';
import 'package:ecommerce_project/ui/widgets/sliver_app_bars/app_bar_non_sliver_standart.dart';
import 'package:ecommerce_project/ui/widgets/switch_total_rating_stars.dart';
import 'package:ecommerce_project/utilities/k_constants.dart';
import 'package:ecommerce_project/utilities/k_text_styles.dart';

class ReviewsScreen extends StatelessWidget {
  final Product product;

  const ReviewsScreen({
    required this.product,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      // extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: const AppBarNonSliverStandart(),
      body: SizedBox(
        // color: Colors.red.withOpacity(0.5),
        height: size.height,
        width: size.width,
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                physics: const ClampingScrollPhysics(),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: Constants.kPaddingHorizontalMain,
                    vertical: Constants.kPaddingHorizontalMain,
                  ),
                  child: Column(
                    children: [
                      ProductCardHorizontalMini(
                        product: Product(
                          title: product.title,
                          price: product.price,
                          imageUrl: product.imageUrl,
                        ),
                        cardColor: Colors.white.withOpacity(0.9),
                        cardHeight: 65,
                        cardWidth: size.width,
                        isBorderElevated: true,
                      ),
                      const SizedBox(
                          height: Constants.kPaddingContentAndContent),
                      SizedBox(
                        // color: Colors.orange.withOpacity(0.5),
                        width: size.width,
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '3.5 / 5',
                              textAlign: TextAlign.end,
                              maxLines: 1,
                              softWrap: false,
                              overflow: TextOverflow.ellipsis,
                              style: kReviewScreenReviewPointTextStyle,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                SwitchTotalRatingStars(
                                  rating: 3.5,
                                  starSize: 30,
                                ),
                                Text('234 Reviews '),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                          height: Constants.kPaddingContentAndContent),
                      // color: Colors.yellowAccent.withOpacity(0.5),
                      ListView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        clipBehavior: Clip.none,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return ReviewWidgetSingle(
                            review: Review(
                                senderName: 'Carly West',
                                senderPhoto: 'assets/images/pose2.jpg',
                                productRating: 3.5,
                                createdAt: '21.07.2024 23:42',
                                text:
                                    'ClassisdfgsdfgsdfgsdfgsdcClassisdfggsdfgsdcClassisdfgsdfgsdfgsdfgsdfg'),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const BottomSheetButtonSetAddOrLike(),
          ],
        ),
      ),
    );
  }
}
