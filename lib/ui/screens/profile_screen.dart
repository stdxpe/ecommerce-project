import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:ecommerce_project/models/user_model.dart';
import 'package:ecommerce_project/ui/widgets/buttons/button_profile_screen_listile.dart';
import 'package:ecommerce_project/ui/widgets/buttons/button_profile_screen_switch_tile.dart';
import 'package:ecommerce_project/ui/widgets/cards/user_profile_card.dart';
import 'package:ecommerce_project/ui/widgets/payment_related/payment_credit_card.dart';
import 'package:ecommerce_project/ui/widgets/slivers_and_appbars/app_bar_main_non_sliver.dart';
import 'package:ecommerce_project/ui/widgets/titles/title_payment_summary_change.dart';
import 'package:ecommerce_project/utilities/k_color_palette.dart';
import 'package:ecommerce_project/utilities/k_constants.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: const AppBarMainNonSliver(
        backgroundColor: Colors.white,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: size.width,
            decoration: BoxDecoration(
              color: ColorPalette.kColorModalBottomSheet,
              boxShadow: [
                BoxShadow(
                  color: Colors.black54.withOpacity(0.15),
                  spreadRadius: 0.5,
                  blurRadius: 10,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Container(
              // color: Colors.red.withOpacity(0.5),
              padding: const EdgeInsets.only(
                left: Constants.kPaddingHorizontalMain,
                right: Constants.kPaddingHorizontalMain,
              ),
              child: Stack(
                children: [
                  UserProfileCard(
                    // isBorderElevated: true,
                    elevation: 5,
                    cardHeight: 65,
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
                        icon: const Icon(
                          Icons.edit_note,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: const ClampingScrollPhysics(),
              child: Container(
                // color: Colors.yellowAccent.withOpacity(0.5),
                padding: const EdgeInsets.only(
                  left: Constants.kPaddingHorizontalMain,
                  right: Constants.kPaddingHorizontalMain,
                  top: Constants.kPaddingHorizontalMain,
                  bottom: Constants.kPaddingAppBottom,
                ),
                child:

                    /// CONTENT
                    Column(
                  children: [
                    const SizedBox(
                        height: Constants.kPaddingHorizontalMain * 2),
                    const Divider(
                      thickness: 0.75,
                      height: 0,
                      color: Colors.black26,
                    ),
                    ButtonProfileScreenListile(
                      title: 'Orders',
                      onPressed: () {},
                    ),
                    const Divider(
                      thickness: 0.75,
                      height: 0,
                      color: Colors.black26,
                    ),
                    ButtonProfileScreenListile(
                      title: 'Shipping Addresses',
                      onPressed: () {},
                    ),
                    const Divider(
                      thickness: 0.75,
                      height: 0,
                      color: Colors.black26,
                    ),
                    ButtonProfileScreenListile(
                      title: 'Credit Cards',
                      onPressed: () {},
                    ),
                    const Divider(
                      thickness: 0.75,
                      height: 0,
                      color: Colors.black26,
                    ),
                    const ButtonProfileScreenSwitchTile(
                      title: 'Dark Mode',
                      switchValue: false,
                    ),
                    const Divider(
                      thickness: 0.75,
                      height: 0,
                      color: Colors.black26,
                    ),
                    const ButtonProfileScreenSwitchTile(
                      title: 'Notifications',
                      switchValue: true,
                    ),
                    const Divider(
                      thickness: 0.75,
                      height: 0,
                      color: Colors.black26,
                    ),
                    ButtonProfileScreenListile(
                      title: 'Change Password',
                      onPressed: () {},
                    ),
                    const Divider(
                      thickness: 0.75,
                      height: 0,
                      color: Colors.black26,
                    ),
                    ButtonProfileScreenListile(
                      title: 'About Us',
                      onPressed: () {},
                    ),
                    const Divider(
                      thickness: 0.75,
                      height: 0,
                      color: Colors.black26,
                    ),
                    ButtonProfileScreenListile(
                      title: 'Sign Out',
                      onPressed: () {},
                    ),
                    const Divider(
                      thickness: 0.75,
                      height: 0,
                      color: Colors.black26,
                    ),
                    TitlePaymentSummaryChange(
                      title: 'Shipping Address',
                      subtext:
                          '21st Greenday Street 100021\nNew York / Manhattan\nUnited States',
                      onPressed: () {
                        showCupertinoModalPopup(
                          barrierDismissible: true,
                          barrierColor: Colors.black.withOpacity(0.4),
                          context: context,
                          builder: (context) {
                            return BottomSheet(
                              constraints: BoxConstraints.loose(
                                Size.fromHeight(
                                  size.height * 0.75,
                                ),
                              ),
                              // constraints: BoxConstraints.tightForFinite(height: 100),
                              enableDrag: false,
                              backgroundColor: Colors.red,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(0.0)),
                              ),
                              onClosing: () {},
                              builder: (context) {
                                return PaymentCreditCard(
                                  onPressedOptional: () {},
                                  onPressedMain: () {},
                                );
                              },
                            );
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
