import 'package:flutter/material.dart';

import 'package:ecommerce_project/models/address.dart';
import 'package:ecommerce_project/models/credit_card.dart';
import 'package:ecommerce_project/models/order.dart';
import 'package:ecommerce_project/models/product.dart';
import 'package:ecommerce_project/models/user_model.dart';
import 'package:ecommerce_project/ui/screens/credit_cards_screen.dart';
import 'package:ecommerce_project/ui/screens/orders_screen.dart';
import 'package:ecommerce_project/ui/screens/shipping_addresses_screen.dart';
import 'package:ecommerce_project/ui/widgets/buttons/button_profile_screen_listile.dart';
import 'package:ecommerce_project/ui/widgets/buttons/button_profile_screen_switch_tile.dart';
import 'package:ecommerce_project/ui/widgets/cards/user_profile_card.dart';
import 'package:ecommerce_project/ui/widgets/platform_adaptive_widgets/platform_adaptive_navigator.dart';
import 'package:ecommerce_project/ui/widgets/slivers_and_appbars/app_bar_main_non_sliver.dart';
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
                      onPressed: () {
                        PlatformAdaptiveNavigator().push(
                          context,
                          OrdersScreen(
                            ordersList: [
                              Order(
                                  id: '#235399423',
                                  createdAt: '13.03.2024',
                                  totalPrice: 102.99,
                                  products: [
                                    Product(
                                      title: 'QTT Crop-Fit Shirt',
                                      price: 49.99,
                                      imageUrl: 'assets/images/pose2.jpg',
                                    ),
                                    Product(
                                      title: 'MOS Sale-Fit Shirt',
                                      price: 19.99,
                                      imageUrl: 'assets/images/pose3.jpg',
                                    ),
                                  ]),
                              Order(
                                id: '#847793203',
                                createdAt: '19.05.2024',
                                totalPrice: 293.03,
                                products: [
                                  Product(
                                    title: 'QTT Crop-Fit ShirtShirtShirt',
                                    price: 19.99,
                                    imageUrl: 'assets/images/pose2.jpg',
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                    const Divider(
                      thickness: 0.75,
                      height: 0,
                      color: Colors.black26,
                    ),
                    ButtonProfileScreenListile(
                      title: 'Shipping Addresses',
                      onPressed: () {
                        PlatformAdaptiveNavigator().push(
                          context,
                          ShippingAddressesScreen(
                            addressList: [
                              Address(
                                addressTitle: 'Home Address',
                                addressText:
                                    '21st Greenday Street 100021\nNew York / Manhattan\nUnited States',
                              ),
                              Address(
                                addressTitle: 'Work Address',
                                addressText:
                                    '28st Greenday Street 100021\nNew York / Manhattan\nUnited States',
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                    const Divider(
                      thickness: 0.75,
                      height: 0,
                      color: Colors.black26,
                    ),
                    ButtonProfileScreenListile(
                      title: 'Credit Cards',
                      onPressed: () {
                        PlatformAdaptiveNavigator().push(
                          context,
                          CreditCardsScreen(
                            creditCardsList: [
                              CreditCard(
                                name: 'Jane Doe',
                                number: '**** **** **** 2342',
                                date: '',
                                cvv: '',
                              ),
                              CreditCard(
                                name: 'Marianne Smith',
                                number: '**** **** **** 9984',
                                date: '',
                                cvv: '',
                              ),
                            ],
                          ),
                        );
                      },
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
