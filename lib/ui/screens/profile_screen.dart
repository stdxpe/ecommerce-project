import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:ecommerce_project/models/user_model.dart';
import 'package:ecommerce_project/ui/widgets/bottom_sheets/bottom_sheet_payment_summary.dart';
import 'package:ecommerce_project/ui/widgets/cards/user_profile_card.dart';
import 'package:ecommerce_project/ui/widgets/slivers_and_appbars/app_bar_standart_back_search_button.dart';
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
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: SingleChildScrollView(
                physics: const ClampingScrollPhysics(),
                child: Container(
                  // color: Colors.yellowAccent.withOpacity(0.5),
                  padding: const EdgeInsets.only(
                    left: Constants.kPaddingHorizontalMain,
                    right: Constants.kPaddingHorizontalMain,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      /// TITLE
                      // Container(
                      //   padding: const EdgeInsets.only(
                      //     top: Constants.kPaddingAppTopAndMainTitle,
                      //     bottom: Constants.kPaddingItemsCountAndContent,
                      //   ),
                      //   // color: Colors.red.withOpacity(0.5),
                      //   child: const TitleMain(
                      //     // title: Strings.kStringDiscoverTitle,
                      //     title: 'Profile',
                      //   ),
                      // ),

                      /// CONTENT
                      Container(
                        // color: Colors.red.withOpacity(0.5),
                        padding: const EdgeInsets.only(
                            // top: Constants.kPaddingAppTopAndMainTitle,
                            // bottom: Constants.kPaddingContentAndContent,
                            ),
                        child: Stack(
                          children: [
                            UserProfileCard(
                              // isBorderElevated: true,
                              elevation: 5,
                              cardHeight: 100,
                              cardWidth: size.width,
                              userModel: UserModel(
                                name: 'Jane Doe',
                                email: 'verified@email.com',
                                phone: '555 5432134',
                                profilePhoto: 'assets/images/pose7.jpg',
                              ),
                            ),
                            Positioned.fill(
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.edit_note,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      Container(
                        // color: Colors.green.withOpacity(0.5),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Container(
                                // color: Colors.red.withOpacity(0.5),
                                child: Column(
                                  // mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    const Divider(
                                      thickness: 0.75,
                                      height:
                                          Constants.kPaddingContentAndContent,
                                      color: Colors.black26,
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          'Dark Mode',
                                          style:
                                              kUserProfileTextStyleSwitchIconTexts,
                                        ),
                                        CupertinoSwitch(
                                          onChanged: (value) {},
                                          value: true,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          'Notifications',
                                          style:
                                              kUserProfileTextStyleSwitchIconTexts,
                                        ),
                                        CupertinoSwitch(
                                          onChanged: (value) {},
                                          value: true,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const Divider(
                              thickness: 0.75,
                              height: Constants.kPaddingContentAndContent,
                              color: Colors.black26,
                            ),
                            TitlePaymentSummaryChange(
                              title: 'Orders',
                              subtext: 'You havent created an order yet',
                              textButtonText: '',
                              onPressed: () {},
                            ),

                            const Divider(
                              thickness: 0.75,
                              height: Constants.kPaddingContentAndContent,
                              color: Colors.black26,
                            ),

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
                          ],
                        ),
                      ), // SizedBox(height: paddingTop!),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: BottomSheetPaymentSummary(
                isBackButtonIncluded: true,
                optionalButtonText: 'Change Password',
                buttonText: 'Sign Out',
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
