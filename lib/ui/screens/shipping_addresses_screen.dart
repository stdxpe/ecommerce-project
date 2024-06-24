import 'package:ecommerce_project/ui/widgets/bottom_sheets/bottom_sheet_general_modal_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:ecommerce_project/models/address.dart';
import 'package:ecommerce_project/ui/widgets/payment_related/payment_shipping_address.dart';
import 'package:ecommerce_project/ui/widgets/slivers_and_appbars/app_bar_main_non_sliver.dart';
import 'package:ecommerce_project/ui/widgets/titles/title_main.dart';
import 'package:ecommerce_project/ui/widgets/titles/title_payment_summary_change.dart';
import 'package:ecommerce_project/utilities/k_constants.dart';
import 'package:ecommerce_project/utilities/k_strings_en.dart';

class ShippingAddressesScreen extends StatelessWidget {
  final List<Address> addressList;

  const ShippingAddressesScreen({
    required this.addressList,
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
      body: Container(
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
                child: TitleMain(
                  title: Strings.kStringTitleShippingAddresses,
                  optionalRightIcon: Icons.add,
                  onPressed: () {
                    BottomSheetGeneralModalSheet().show(
                      contextParam: context,
                      sizeParam: size,
                      screen: PaymentShippingAddress(
                        onPressedOptional: () {},
                        onPressedMain: () {},
                      ),
                    );
                    // showCupertinoModalPopup(
                    //   barrierDismissible: true,
                    //   barrierColor: Colors.black.withOpacity(0.4),
                    //   context: context,
                    //   builder: (context) {
                    //     return BottomSheet(
                    //       constraints: BoxConstraints.loose(
                    //         Size.fromHeight(
                    //           size.height * 0.75,
                    //         ),
                    //       ),
                    //       // constraints: BoxConstraints.tightForFinite(height: 100),
                    //       enableDrag: false,
                    //       // backgroundColor: Colors.red,
                    //       backgroundColor: Colors.white,
                    //       shape: const RoundedRectangleBorder(
                    //         borderRadius: BorderRadius.vertical(
                    //             top: Radius.circular(0.0)),
                    //       ),
                    //       onClosing: () {},
                    //       builder: (context) {
                    //         return Padding(
                    //           padding: const EdgeInsets.only(top: 20.0),
                    //           child:
                    //             PaymentShippingAddress(
                    //             onPressedOptional: () {},
                    //             onPressedMain: () {},
                    //           ),
                    //         );
                    //       },
                    //     );
                    //   },
                    // );
                  },
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
                    const Divider(
                      thickness: 0.75,
                      height: 0,
                      color: Colors.black26,
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: addressList.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            TitlePaymentSummaryChange(
                              textButtonText: 'Delete',
                              onPressed: () {},
                              title: addressList[index].addressTitle,
                              subtext: addressList[index].addressText,
                            ),
                            const Divider(
                              thickness: 0.75,
                              height: 0,
                              color: Colors.black26,
                            ),
                          ],
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
