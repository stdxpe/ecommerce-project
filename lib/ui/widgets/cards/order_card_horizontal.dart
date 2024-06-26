import 'package:flutter/material.dart';

import 'package:ecommerce_project/models/order.dart';
import 'package:ecommerce_project/ui/screens/tracking_order_screen.dart';
import 'package:ecommerce_project/ui/widgets/platform_adaptive_widgets/platform_adaptive_navigator.dart';
import 'package:ecommerce_project/utilities/k_constants.dart';
import 'package:ecommerce_project/utilities/k_text_styles.dart';

class OrderCardHorizontal extends StatelessWidget {
  final Order order;
  final Function? onPressed;
  final double cardHeight;
  final double cardWidth;
  final Color? cardColor;
  final bool? isBorderElevated;
  final double? elevation;

  const OrderCardHorizontal({
    required this.order,
    this.onPressed,
    required this.cardHeight,
    required this.cardWidth,
    this.cardColor = Colors.white,
    this.isBorderElevated = false,
    this.elevation = 1.5,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        PlatformAdaptiveNavigator().push(
          context,
          TrackingOrderScreen(order: order),
        );
      },
      child: Center(
        child: Card(
          elevation: isBorderElevated! ? elevation : 0,
          margin: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Constants.kRadiusCardSecondary),
          ),
          clipBehavior: isBorderElevated! ? Clip.hardEdge : Clip.none,
          color: cardColor,
          child: SizedBox(
            width: cardWidth,
            height: cardHeight,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                /// Image
                Center(
                  child: Card(
                    margin: EdgeInsets.zero,
                    elevation: elevation,
                    clipBehavior: Clip.hardEdge,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        Constants.kRadiusCardSecondary,
                      ),
                    ),
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: Image.asset(
                        height: cardHeight,
                        width: cardHeight,
                        order.products[0].mainPhoto,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),

                /// Text & Content
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 5,
                    ),
                    child: SizedBox(
                      // color: Colors.green.withOpacity(0.5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    order.id,
                                    overflow: TextOverflow.ellipsis,
                                    softWrap: true,
                                    maxLines: 1,
                                    style: kOrderItemTitleTextStyle.copyWith(
                                      fontSize: 12.5,
                                    ),
                                  ),
                                  Text(
                                    '\$${order.totalPrice.toStringAsFixed(2)}',
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    style: kOrderItemTitleTextStyle,
                                  ),
                                ],
                              ),
                              Text(
                                'Total Item Count: ${order.products.length}',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: kOrderItemSecondaryTextStyle,
                              ),
                            ],
                          ),
                          Text(
                            order.createdAt,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: kOrderItemSecondaryTextStyle.copyWith(
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.2,
                              fontSize: 12.5,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
