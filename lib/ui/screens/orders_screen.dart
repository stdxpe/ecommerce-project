import 'package:flutter/material.dart';

import 'package:ecommerce_project/models/order.dart';
import 'package:ecommerce_project/ui/widgets/cards/order_card_horizontal.dart';
import 'package:ecommerce_project/ui/widgets/slivers_and_appbars/app_bar_main_non_sliver.dart';
import 'package:ecommerce_project/ui/widgets/titles/title_main.dart';
import 'package:ecommerce_project/ui/widgets/titles/title_number_of_items_found.dart';
import 'package:ecommerce_project/utilities/k_constants.dart';
import 'package:ecommerce_project/utilities/k_strings_en.dart';

class OrdersScreen extends StatelessWidget {
  final List<Order> ordersList;

  const OrdersScreen({
    required this.ordersList,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const AppBarMainNonSliver(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
      ),
      body: SizedBox(
        // color: Colors.red.withOpacity(0.5),
        height: size.height,
        width: size.width,
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Column(
            children: [
              /// TITLE
              Padding(
                padding: const EdgeInsets.only(
                  left: Constants.kPaddingHorizontalMain,
                  right: Constants.kPaddingHorizontalMain,
                  top: Constants.kPaddingAppTopAndMainTitle,
                  bottom: Constants.kPaddingMainTitleAndContent,
                ),
                child: Column(
                  children: [
                    const TitleMain(
                      title: Strings.kStringTitleOrders,
                    ),
                    TitleNumberOfItemsFound(
                      title: Strings.kStringItemsFound,
                      itemCount: ordersList.length,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: Constants.kPaddingHorizontalMain,
                  right: Constants.kPaddingHorizontalMain,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: ordersList.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                            bottom: Constants.kPaddingBetweenElementsMain * 3,
                            top: Constants.kPaddingBetweenElementsMain,
                          ),
                          child: OrderCardHorizontal(
                            order: ordersList[index],
                            cardColor: Colors.white.withOpacity(0.9),
                            cardHeight: 75,
                            cardWidth: size.width,
                            isBorderElevated: true,
                          ),
                        );
                      },
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
