import 'package:ecommerce_project/ui/widgets/bottom_sheets/bottom_sheet_button_set_add_or_like.dart';
import 'package:flutter/material.dart';

import 'package:ecommerce_project/models/product.dart';
import 'package:ecommerce_project/ui/widgets/cards/product_card_horizontal.dart';
import 'package:ecommerce_project/ui/widgets/slivers_and_appbars/app_bar_standart_back_search_button.dart';
import 'package:ecommerce_project/ui/widgets/titles/title_main.dart';
import 'package:ecommerce_project/ui/widgets/titles/title_payment_summary_change.dart';
import 'package:ecommerce_project/utilities/k_constants.dart';
import 'package:ecommerce_project/utilities/k_text_styles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: const AppBarStandartBackSearchButton(
          backgroundColor: Colors.white, isOnlyBackButton: true),
      body: Container(
        // color: Colors.red.withOpacity(0.5),
        height: size.height,
        width: size.width,
        padding: const EdgeInsets.only(
          left: Constants.kPaddingHorizontalMain,
          right: Constants.kPaddingHorizontalMain,
        ),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                physics: const ClampingScrollPhysics(),
                child: Column(
                  children: [
                    /// TITLE
                    const Padding(
                      padding: EdgeInsets.only(
                        top: Constants.kPaddingAppTopAndMainTitle,
                        bottom: Constants.kPaddingMainTitleAndContent,
                        // bottom: Constants.kPaddingItemsCountAndContent,
                      ),
                      child: TitleMain(
                        // title: Strings.kStringDiscoverTitle,
                        title: 'Profile',
                      ),
                    ),

                    /// CONTENT
                    Container(
                      padding: const EdgeInsets.only(
                        // top: Constants.kPaddingAppTopAndMainTitle,
                        bottom: Constants.kPaddingMainTitleAndContent,
                        // bottom: Constants.kPaddingItemsCountAndContent,
                      ),
                      child: ProductCardHorizontal(
                        textStylePrimary: kDetailsScreenPriceTextStyle,
                        textStyleSecondary: kReviewScreenProductCardTextStyle,
                        bottomText: 'janedoe@gmail.com',
                        product: Product(
                            title: 'Jane Doe',
                            price: 123,
                            imageUrl: 'assets/images/pose6.jpg'),
                        cardHeight: 100,
                        cardWidth: size.width,
                      ),
                    ),
                    Column(
                      children: [
                        /// TODO: Address and Credit Card info comes here.
                        TitlePaymentSummaryChange(
                          title: 'Shipping Address',
                          subtext:
                              '21st Greenday Street 100021\nNew York / Manhattan\nUnited States',
                          onPressed: () {},
                        ),
                        const Divider(
                          thickness: 0.75,
                          height: Constants.kPaddingContentAndContent,
                          color: Colors.black26,
                        ),

                        TitlePaymentSummaryChange(
                          title: 'Payment',
                          subtext: '**** **** **** 5247',
                          subTextStyle:
                              kPaymentScreenSummarySubtitleCreditCardTextStyle,
                          onPressed: () {},
                        ),
                        const Divider(
                          thickness: 0.75,
                          height: Constants.kPaddingContentAndContent,
                          color: Colors.black26,
                        ),

                        // SizedBox(height: paddingTop!),
                        BottomSheetButtonSetAddOrLike(
                          onPressedCircularButton: () {},
                          onPressedMainButton: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
