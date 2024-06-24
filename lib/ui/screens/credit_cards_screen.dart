import 'package:flutter/material.dart';

import 'package:ecommerce_project/models/credit_card.dart';
import 'package:ecommerce_project/ui/widgets/bottom_sheets/bottom_sheet_general_modal_sheet.dart';
import 'package:ecommerce_project/ui/widgets/payment_related/payment_credit_card.dart';
import 'package:ecommerce_project/ui/widgets/slivers_and_appbars/app_bar_main_non_sliver.dart';
import 'package:ecommerce_project/ui/widgets/titles/title_main.dart';
import 'package:ecommerce_project/ui/widgets/titles/title_payment_summary_change.dart';
import 'package:ecommerce_project/utilities/k_constants.dart';
import 'package:ecommerce_project/utilities/k_strings_en.dart';
import 'package:ecommerce_project/utilities/k_text_styles.dart';

class CreditCardsScreen extends StatelessWidget {
  final List<CreditCard> creditCardsList;

  const CreditCardsScreen({
    required this.creditCardsList,
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
                  title: Strings.kStringTitleCreditCards,
                  optionalRightIcon: Icons.add,
                  onPressed: () {
                    BottomSheetGeneralModalSheet().show(
                      contextParam: context,
                      sizeParam: size,
                      screen: PaymentCreditCard(
                        onPressedOptional: () {},
                        onPressedMain: () {},
                      ),
                    );
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
                      itemCount: creditCardsList.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            TitlePaymentSummaryChange(
                              textButtonText: 'Delete',
                              subTextStyle:
                                  kPaymentScreenSummarySubtitleCreditCardTextStyle,
                              onPressed: () {},
                              title: creditCardsList[index].name,
                              subtext: creditCardsList[index].number,
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
