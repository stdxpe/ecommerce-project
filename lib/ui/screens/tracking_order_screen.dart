import 'package:flutter/material.dart';

import 'package:ecommerce_project/models/order.dart';
import 'package:ecommerce_project/models/product.dart';
import 'package:ecommerce_project/ui/widgets/cards/product_card_horizontal.dart';
import 'package:ecommerce_project/ui/widgets/slivers_and_appbars/app_bar_main_non_sliver.dart';
import 'package:ecommerce_project/ui/widgets/switch_stepper_step.dart';
import 'package:ecommerce_project/ui/widgets/titles/title_main.dart';
import 'package:ecommerce_project/utilities/k_constants.dart';
import 'package:ecommerce_project/utilities/k_strings_en.dart';
import 'package:ecommerce_project/utilities/k_text_styles.dart';

class TrackingOrderScreen extends StatelessWidget {
  final Order order;

  const TrackingOrderScreen({
    required this.order,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    int currentStep = 1;
    List<String> trackingStatus = [
      'Received',
      'Prepared',
      'On the Way',
      'Delivered',
    ];
    List<String> trackingContent = [
      '',
      '13.03.2024  |  23:42',
      'Delivery Tracking External Link',
      'Delivered at 18.03.2024  |  13:32',
    ];

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
              const Padding(
                padding: EdgeInsets.only(
                  left: Constants.kPaddingHorizontalMain,
                  right: Constants.kPaddingHorizontalMain,
                  top: Constants.kPaddingAppTopAndMainTitle,
                  bottom: Constants.kPaddingMainTitleAndContent,
                ),
                child: TitleMain(
                  title: Strings.kStringTitleTrackingOrder,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: Constants.kPaddingHorizontalMain,
                  right: Constants.kPaddingHorizontalMain,
                ),
                child: Container(),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: Constants.kPaddingHorizontalMain,
                  right: Constants.kPaddingHorizontalMain,
                ),
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: order.products.length,
                  itemBuilder: (context, index) => Container(
                    margin: const EdgeInsets.only(
                      bottom: Constants.kPaddingWishlistScreenBetweenElements,
                    ),
                    child: Stack(
                      clipBehavior: Clip.hardEdge,
                      children: [
                        ProductCardHorizontal(
                          product: Product(
                            title: order.products[index].title,
                            price: order.products[index].price,
                            imageUrl: order.products[index].imageUrl,
                          ),
                          cardHeight: 65,
                          cardWidth: size.width,
                          isBorderElevated: true,
                          bottomText: 'Size: M  |  Color: Yellow',
                        ),
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 5.0,
                                vertical: 2.5,
                              ),
                              child: Text(
                                'x${order.products.length}',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: kCardTextStylePrimary,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Stepper(
                margin: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                onStepTapped: (value) {},
                type: StepperType.vertical,
                currentStep: currentStep,
                controlsBuilder: (context, details) {
                  return Container();
                },
                steps: List.generate(
                  4,
                  (index) => SwitchStepperStep().buildStep(
                    title: trackingStatus[index],
                    content: trackingContent[index],
                    isCompleted: (currentStep >= index) ? true : false,
                  ),
                ),
                // [
                //   SwitchStepperStep().buildStep(
                //     title: 'Prepared',
                //     isCompleted: false,
                //   ),
                //   SwitchStepperStep().buildStep(
                //     title: 'On the Way',
                //     isCompleted: false,
                //   ),
                //   SwitchStepperStep().buildStep(
                //     title: 'Delivered',
                //     isCompleted: false,
                //   ),
                // ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
