import 'package:flutter/material.dart';

import 'package:ecommerce_project/models/product.dart';
import 'package:ecommerce_project/ui/widgets/titles/title_collection_and_see_all_button.dart';
import 'package:ecommerce_project/utilities/k_constants.dart';
import 'package:ecommerce_project/utilities/k_strings_en.dart';

class StaggeredGridCardComponentLeft extends StatelessWidget {
  /// REQUIRES AT LEAST 6 ITEMS
  final List<Product> productList;
  final String collectionTitle;
  final Function() onPressed;
  final double? cardWidth;
  final double? cardHeight;
  final double? paddingHorizontal;
  final double? betweenElementsPadding;

  const StaggeredGridCardComponentLeft({
    required this.productList,
    required this.collectionTitle,
    required this.onPressed,
    this.cardWidth,
    this.cardHeight,
    this.paddingHorizontal = Constants.kPaddingHorizontalMain,
    this.betweenElementsPadding = Constants.kPaddingBetweenElementsMain,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = cardWidth ?? (size.width - paddingHorizontal! * 2);
    double height = cardHeight ?? (size.width * 0.5);
    double betweenElements = betweenElementsPadding!;
    double totalWidth = width - (betweenElements * 3);
    double totalHeight = height - (betweenElements);

    return Container(
      // color: Colors.red.withOpacity(0.5),
      padding: EdgeInsets.only(
        bottom: Constants.kPaddingContentAndContent,
      ),
      child: Column(
        children: [
          /// Collection Title
          Padding(
            padding: EdgeInsets.only(
              left: paddingHorizontal!,
              right: paddingHorizontal!,
              bottom: Constants.kPaddingTitleAndContent,
            ),
            child: TitleCollectionAndSeeAllButton(
              title: collectionTitle,
              buttonTitle: Strings.kStringButtonCollectionTitle,
              onPressed: () {
                onPressed();
              },
            ),
          ),
          GestureDetector(
            onTap: () {
              onPressed();
            },
            child: Container(
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                // color: Colors.red.withOpacity(0.5),
                color: Colors.white,

                borderRadius:
                    BorderRadius.circular(Constants.kRadiusCardSecondary),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black54.withOpacity(0.35),
                    spreadRadius: 0.1,
                    blurRadius: 10,
                    offset: const Offset(0, 3.5),
                  ),
                ],
              ),
              height: height,
              width: width,
              child: Row(
                children: [
                  Container(
                    height: height,
                    width: totalWidth / 4,
                    color: Colors.green.withOpacity(0.5),
                    child: Image.asset(
                      productList[0].imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: betweenElements),
                  Container(
                    height: height,
                    width: totalWidth / 4,
                    color: Colors.yellow.withOpacity(0.5),
                    child: Image.asset(
                      productList[1].imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: betweenElements),
                  Column(
                    children: [
                      Container(
                        height: totalHeight / 2,
                        width: totalWidth / 4,
                        color: Colors.purple.withOpacity(0.5),
                        child: Image.asset(
                          productList[2].imageUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: betweenElements),
                      Container(
                        height: totalHeight / 2,
                        width: totalWidth / 4,
                        color: Colors.tealAccent.withOpacity(0.5),
                        child: Image.asset(
                          productList[3].imageUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: betweenElements),
                  Column(
                    children: [
                      Container(
                        height: totalHeight / 2,
                        width: totalWidth / 4,
                        color: Colors.amberAccent.withOpacity(0.5),
                        child: Image.asset(
                          productList[4].imageUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: betweenElements),
                      Container(
                        height: totalHeight / 2,
                        width: totalWidth / 4,
                        color: Colors.pink.withOpacity(0.5),
                        child: Image.asset(
                          productList[5].imageUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// child: Stack(
//           children: [
//             Align(
//               alignment: Alignment.topLeft,
//               child: Container(
//                 color: Colors.green.withOpacity(0.5),
//                 height: height,
//                 width: width * (1 / 4),
//                 child: Image.asset(
//                   'assets/images/pose1.jpg',
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//             Positioned(
//               left: width * (1 / 4),
//               child: Container(
//                 color: Colors.yellow.withOpacity(0.5),
//                 height: height,
//                 width: width * (1 / 4),
//                 child: Image.asset(
//                   'assets/images/pose0.jpg',
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//             Positioned(
//               left: width * (2 / 4),
//               child: Container(
//                 color: Colors.lightBlue.withOpacity(0.5),
//                 height: height / 2,
//                 width: width / 4,
//                 child: Image.asset(
//                   'assets/images/pose2.jpg',
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//             Positioned(
//               left: width * (2 / 4),
//               bottom: 0,
//               child: Container(
//                 color: Colors.orange.withOpacity(0.5),
//                 height: height / 2,
//                 width: width / 4,
//                 child: Image.asset(
//                   'assets/images/pose3.jpg',
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//             Align(
//               alignment: Alignment.topRight,
//               child: Container(
//                 color: Colors.purple.withOpacity(0.5),
//                 height: height / 2,
//                 width: width / 4,
//                 child: Image.asset(
//                   'assets/images/pose4.jpg',
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//             Align(
//               alignment: Alignment.bottomRight,
//               child: Container(
//                 color: Colors.red.withOpacity(0.5),
//                 height: height / 2,
//                 width: width / 4,
//                 child: Image.asset(
//                   'assets/images/pose5.jpg',
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//           ],
//         ),
