import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:ecommerce_project/ui/widgets/product_card_horizontal_mini.dart';
import 'package:ecommerce_project/utilities/k_text_styles.dart';
import 'package:ecommerce_project/utilities/k_color_palette.dart';
import 'package:ecommerce_project/utilities/k_constants.dart';
import 'package:ecommerce_project/models/product.dart';
import 'package:ecommerce_project/models/review.dart';
import 'package:ecommerce_project/ui/widgets/review_widget_single.dart';
import 'package:ecommerce_project/ui/widgets/button_main.dart';
import 'package:ecommerce_project/ui/widgets/button_circular_main.dart';
import 'package:ecommerce_project/ui/widgets/switch_total_rating_stars.dart';

class ReviewsScreen extends StatelessWidget {
  final Product product;

  const ReviewsScreen({
    required this.product,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      bottom: false,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: Container(
            margin: const EdgeInsets.all(10),
            child: ButtonCircularMain(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: CupertinoIcons.chevron_back,
              buttonColor: Colors.black.withOpacity(0.15),
              iconColor: Colors.white,
              buttonSize: 28,
              iconSize: 22,
            ),
          ),
          leadingWidth: 45,
        ),
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
                                '3.5 of 5',
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
              Container(
                width: size.width,
                padding: const EdgeInsets.only(
                  left: Constants.kPaddingHorizontalMainButton,
                  right: Constants.kPaddingHorizontalMainButton,
                  top: Constants.kPaddingHorizontalMain,
                  bottom: Constants.kPaddingHorizontalMainButton,
                ),
                decoration: BoxDecoration(
                  color: ColorPalette.kColorModalBottomSheet,
                  // color: Colors.green.withOpacity(0.5),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black54.withOpacity(0.15),
                      spreadRadius: 0.5,
                      blurRadius: 10,
                      offset: const Offset(0, 0),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: ButtonMain(
                        onPressed: () {},
                        text: 'Add to Shopping Cart',
                        buttonColor: ColorPalette.kColorDarkButton,
                        textColor: Colors.white,
                        paddingHorizontal: 0,
                      ),
                    ),
                    const SizedBox(width: 15),
                    ButtonCircularMain(
                      onPressed: () {},
                      icon: Icons.favorite,
                      iconColor: Colors.red,
                      buttonSize: 50,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
