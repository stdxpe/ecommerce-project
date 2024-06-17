import 'package:flutter/material.dart';

import 'package:ecommerce_project/utilities/k_text_styles.dart';

class TitleDetailsScreenNameAndPrice extends StatelessWidget {
  final String title;
  final double price;
  final double? droppedPrice;

  const TitleDetailsScreenNameAndPrice({
    required this.title,
    required this.price,
    this.droppedPrice,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Flexible(
          flex: 6,
          child: SizedBox(
            // color: Colors.green.withOpacity(0.5),
            child: Text(
              title,
              textAlign: TextAlign.start,
              maxLines: 5,
              // softWrap: true,
              overflow: TextOverflow.ellipsis,
              style: kDetailsScreenTitleMainTextStyle,
            ),
          ),
        ),
        Flexible(
            flex: 1,
            child: SizedBox(
                // color: Colors.grey.withOpacity(0.5),
                child: Container(
              height: 40,
            ))),
        Flexible(
          flex: 3,
          child: SizedBox(
            // color: Colors.green.withOpacity(0.5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                if (droppedPrice != null)
                  Text(
                    '\$${droppedPrice!.toStringAsFixed(2)}',
                    textAlign: TextAlign.end,
                    maxLines: 1,
                    softWrap: false,
                    overflow: TextOverflow.ellipsis,
                    style: kDetailsScreenDroppedPriceTextStyle,
                  ),
                Text(
                  '\$${price.toStringAsFixed(2)}',
                  textAlign: TextAlign.end,
                  maxLines: 1,
                  softWrap: false,
                  overflow: TextOverflow.ellipsis,
                  style: kDetailsScreenPriceTextStyle,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
