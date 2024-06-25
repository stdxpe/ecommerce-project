import 'package:ecommerce_project/ui/widgets/switch_color_selector.dart';
import 'package:ecommerce_project/ui/widgets/switch_size_selector.dart';
import 'package:flutter/material.dart';

import 'package:ecommerce_project/models/product.dart';
import 'package:ecommerce_project/ui/widgets/bottom_sheets/bottom_sheet_payment_summary.dart';
import 'package:ecommerce_project/ui/widgets/buttons/button_shopping_cart_item_counter.dart';
import 'package:ecommerce_project/ui/widgets/dialog_popups/dialog_popup_card_details_screen.dart';
import 'package:ecommerce_project/ui/widgets/dialog_popups/dialog_popup_widget_main.dart';
import 'package:ecommerce_project/ui/widgets/switch_color_selection.dart';
import 'package:ecommerce_project/ui/widgets/switch_size_selection.dart';
import 'package:ecommerce_project/utilities/k_constants.dart';
import 'package:ecommerce_project/utilities/k_strings_en.dart';
import 'package:ecommerce_project/utilities/k_text_styles.dart';

class BottomSheetAddToShoppingCart extends StatelessWidget {
  final Function onPressedMain;
  final Function? onPressedOptional;
  final String productTitle;
  final Product product;

  const BottomSheetAddToShoppingCart({
    required this.onPressedMain,
    this.onPressedOptional,
    super.key,
    required this.productTitle,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      // color: Colors.red.withOpacity(0.5),
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              physics: ClampingScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  /// CONTENT
                  const SizedBox(height: 10),
                  Container(
                    width: size.width,
                    // color: Colors.amber.withOpacity(0.5),
                    // padding: EdgeInsets.symmetric(horizontal: 0),
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: Constants.kPaddingHorizontalMain,
                        right: Constants.kPaddingHorizontalMain,
                        // bottom: Constants.kPaddingAppBottom,
                        // top: Constants.kPaddingAppTop,
                      ),
                      child: Text(
                        product.title,
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        // softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        style: kDetailsScreenTitleMainTextStyle,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),

                  ButtonShoppingCartItemCounter(),

                  const SizedBox(height: 20),

                  Container(
                    // color: Colors.green.withOpacity(0.5),
                    child: SwitchColorSelector(
                      isMaxSized: false,
                      itemPaddingHorizontal: 5,
                      selectedItem: Colors.red,
                      items: const [
                        Colors.red,
                        Colors.green,
                        Colors.blue,
                        Colors.pink,
                        Colors.orangeAccent,
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),

                  Container(
                    // color: Colors.green.withOpacity(0.5),
                    child: SwitchSizeSelector(
                      isMaxSized: false,
                      itemPaddingHorizontal: 5,
                      selectedItem: 'S',
                      items: const [
                        'XS',
                        'S',
                        'M',
                        'L',
                        'XL',
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),

          /// PAYMENT BOTTOM SHEET
          Align(
            alignment: Alignment.bottomCenter,
            child: BottomSheetPaymentSummary(
              mainButtonText: Strings.kStringButtonAddToShoppingCart,
              onPressedMain: () {
                /// TODO: Adding to shopping cart operation here.
                Navigator.of(context).pop();
                DialogPopupWidgetMain(
                  context: context,
                  content: DialogPopupCardDetailsScreen(
                    title: Strings.kStringSuccess,
                    imageUrl: product.imageUrl,
                    buttonTextPrimary: Strings.kStringButtonCheckOut,
                    buttonTextSecondary: Strings.kStringButtonContinueShopping,
                    cardHeight: size.height * 0.5,
                    cardWidth: size.width * 0.75,
                  ),
                ).showAlertDialog();
                onPressedMain();
              },
            ),
          ),
        ],
      ),
    );
  }
}
