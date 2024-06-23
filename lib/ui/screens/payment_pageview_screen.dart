import 'package:flutter/material.dart';

import 'package:ecommerce_project/models/enums.dart';
import 'package:ecommerce_project/ui/widgets/payment_related/payment_credit_card.dart';
import 'package:ecommerce_project/ui/widgets/payment_related/payment_result.dart';
import 'package:ecommerce_project/ui/widgets/payment_related/payment_shipping_address.dart';
import 'package:ecommerce_project/ui/widgets/payment_related/payment_stepper_status_bar.dart';
import 'package:ecommerce_project/ui/widgets/payment_related/payment_summary.dart';
import 'package:ecommerce_project/ui/widgets/slivers_and_appbars/app_bar_main_non_sliver.dart';
import 'package:ecommerce_project/ui/widgets/titles/title_payment_screen_main.dart';
import 'package:ecommerce_project/utilities/k_constants.dart';
import 'package:ecommerce_project/utilities/k_strings_en.dart';

class PaymentPageviewScreen extends StatefulWidget {
  const PaymentPageviewScreen({super.key});

  @override
  State<PaymentPageviewScreen> createState() => _PaymentPageviewScreenState();
}

class _PaymentPageviewScreenState extends State<PaymentPageviewScreen> {
  int _screenIndex = 0;
  PaymentStatus _paymentStatus = PaymentStatus.shipping;

  @override
  Widget build(BuildContext context) {
    final pageViewController = PageController(
      initialPage: 0,
      // viewportFraction: 0.8,
      // keepPage: false,
    );

    final List paymentStatusList = [
      PaymentStatus.shipping,
      PaymentStatus.payment,
      PaymentStatus.summary,
      PaymentStatus.result,
      PaymentStatus.success,
      PaymentStatus.failed,
    ];

    final Map<PaymentStatus, String> paymentStatusMap = {
      PaymentStatus.shipping: Strings.kStringPaymentStatusShipping,
      PaymentStatus.payment: Strings.kStringPaymentStatusPayment,
      PaymentStatus.summary: Strings.kStringPaymentStatusSummary,
      PaymentStatus.result: Strings.kStringPaymentStatusResult,
      PaymentStatus.success: Strings.kStringPaymentStatusSuccess,
      PaymentStatus.failed: Strings.kStringPaymentStatusFailed,
    };

    void setPaymentStatus(
        {PaymentStatus enteredPaymentStatus = PaymentStatus.shipping}) {
      setState(() {
        _paymentStatus = enteredPaymentStatus;
        _screenIndex = paymentStatusList.indexOf(enteredPaymentStatus);
        print(
            'INDEXOF_screenIndex${paymentStatusList.indexOf(enteredPaymentStatus, 0)}');
      });
    }

    void goNextPage() {
      pageViewController.nextPage(
        duration: const Duration(milliseconds: 10),
        curve: Curves.linear,
      );
    }

    void goPreviousPage() {
      pageViewController.previousPage(
        duration: const Duration(milliseconds: 10),
        curve: Curves.linear,
      );
    }

    final List<Widget> paymentScreens = [
      PaymentShippingAddress(
        onPressedMain: () {
          goNextPage();
          setPaymentStatus(enteredPaymentStatus: PaymentStatus.payment);
        },
      ),
      PaymentCreditCard(
        onPressedMain: () {
          goNextPage();
          setPaymentStatus(enteredPaymentStatus: PaymentStatus.summary);
        },
        onPressedOptional: () {
          goPreviousPage();
          setPaymentStatus(enteredPaymentStatus: PaymentStatus.shipping);
        },
      ),
      PaymentSummary(
        onPressedMain: () {
          /// TODO: Payment Operation is gonna-be-here.
          goNextPage();
          setPaymentStatus(enteredPaymentStatus: PaymentStatus.result);
          // setPaymentStatus(enteredPaymentStatus: PaymentStatus.failed);
        },
        onPressedOptional: () {
          goPreviousPage();
          setPaymentStatus(enteredPaymentStatus: PaymentStatus.payment);
        },
      ),
      PaymentResult(
        onPressedMain: () {
          goNextPage();
          setPaymentStatus(enteredPaymentStatus: PaymentStatus.success);
        },
        onPressedOptional: () {
          goPreviousPage();
          setPaymentStatus(enteredPaymentStatus: PaymentStatus.summary);
        },
        isResultEndedWithSuccess: true,
      ),
    ];

    Size size = MediaQuery.of(context).size;
    double systemToolbarHeight = MediaQuery.of(context).padding.top;
    double appBarHeight = kToolbarHeight;

    print('Screen Index: $_screenIndex');
    print('Payment Status: $_paymentStatus');

    return Scaffold(
      appBar: const AppBarMainNonSliver(
        automaticallyImplyLeading: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.zero,
        primary: true,
        physics: const ClampingScrollPhysics(),
        child: SizedBox(
          height: (size.height - appBarHeight - systemToolbarHeight),
          width: size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: Constants.kPaddingHorizontalMain,
                  right: Constants.kPaddingHorizontalMain,
                ),
                child: Column(
                  children: [
                    PaymentStepperStatusBar(
                      paymentStatus: paymentStatusList[_screenIndex],
                      onPressed: (manualClickedStatus) {
                        setState(() {
                          _paymentStatus = manualClickedStatus;
                          print(
                              'Status Stepper: Manual Clicked Payment Status: $manualClickedStatus');
                          print(
                              'Status Stepper: Payment Status: $_paymentStatus');
                          _screenIndex =
                              paymentStatusList.indexOf(manualClickedStatus);
                          pageViewController.jumpToPage(_screenIndex);
                        });
                      },
                    ),

                    /// PAYMENT TITLE
                    TitlePaymentScreenMain(
                      title: paymentStatusMap[_paymentStatus]!,
                      stepNumber: _screenIndex + 1,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: PageView(
                  clipBehavior: Clip.hardEdge,
                  controller: pageViewController,
                  physics: const NeverScrollableScrollPhysics(),
                  onPageChanged: (pageIndex) {
                    setState(() {});
                    _screenIndex = pageIndex;
                  },
                  scrollDirection: Axis.horizontal,
                  allowImplicitScrolling: true,
                  children: paymentScreens,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
