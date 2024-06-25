import 'package:flutter/material.dart';

import 'package:ecommerce_project/models/product.dart';
import 'package:ecommerce_project/ui/widgets/bottom_sheets/bottom_sheet_button_add_to_shopping_cart.dart';
import 'package:ecommerce_project/ui/widgets/dialog_popups/dialog_popup_card_details_screen.dart';
import 'package:ecommerce_project/ui/widgets/dialog_popups/dialog_popup_widget_main.dart';
import 'package:ecommerce_project/ui/widgets/filter_related/switch_filter_color_selector.dart';
import 'package:ecommerce_project/ui/widgets/filter_related/switch_filter_size_selector.dart';
import 'package:ecommerce_project/utilities/k_constants.dart';
import 'package:ecommerce_project/utilities/k_strings_en.dart';
import 'package:ecommerce_project/utilities/k_text_styles.dart';

class BottomSheetSizeColorAndAmountPicker extends StatelessWidget {
  final Function onPressedMain;
  final Function? onPressedOptional;
  final Product product;

  const BottomSheetSizeColorAndAmountPicker({
    required this.onPressedMain,
    this.onPressedOptional,
    super.key,
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// CONTENT
                  Container(
                    // color: Colors.amber.withOpacity(0.5)
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: Constants.kPaddingHorizontalMain,
                        right: Constants.kPaddingHorizontalMain,
                        bottom: Constants.kPaddingHorizontalMain * 1.5,
                        // top: Constants.kPaddingAppTop,
                      ),
                      child: Text(
                        product.title,
                        textAlign: TextAlign.start,
                        maxLines: 2,
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        style: kDetailsScreenTitleMainTextStyle,
                      ),
                    ),
                  ),

                  Container(
                    // color: Colors.green.withOpacity(0.5),
                    child: SwitchFilterColorSelector(
                      itemSize: 45,
                      itemPaddingHorizontal: 10,
                      selectedItem: Colors.red,
                      items: const [
                        Colors.red,
                        Colors.green,
                        Colors.blue,
                        Colors.pink,
                        Colors.orangeAccent,
                        Colors.teal,
                      ],
                    ),
                  ),
                  Container(
                    // color: Colors.green.withOpacity(0.5),
                    child: SwitchFilterSizeSelector(
                      itemSize: 45,
                      itemPaddingHorizontal: 10,
                      selectedItem: 'XS',
                      items: const [
                        'XS',
                        'S',
                        'M',
                        'L',
                        'XL',
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          /// PAYMENT BOTTOM SHEET
          Align(
            alignment: Alignment.bottomCenter,
            child: BottomSheetButtonAddToShoppingCart(
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
