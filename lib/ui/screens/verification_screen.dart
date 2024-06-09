import 'package:ecommerce_project/ui/widgets/switch_verification_code_dots.dart';
import 'package:flutter/material.dart';

import 'package:ecommerce_project/ui/widgets/button_already_have_account.dart';
import 'package:ecommerce_project/utilities/k_strings.dart';
import 'package:ecommerce_project/utilities/k_text_styles.dart';
import 'package:ecommerce_project/ui/widgets/form_input_field.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Stack(
          children: [
            SingleChildScrollView(
              physics: const ClampingScrollPhysics(),
              child: Container(
                margin: const EdgeInsetsDirectional.symmetric(horizontal: 30),
                padding: EdgeInsets.only(
                  top: size.height * 0.175,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Constants.kStringVerificationTitle,
                      style: kTitleMidSizeHelveticaDarkTextStyle,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      Constants.kStringVerificationSubtitle,
                      style: kSubtitleHelveticaDarkTextStyle,
                    ),
                    const SizedBox(height: 50),
                    const SwitchVerificationCodeDots(
                      itemCount: 4,
                      currentIndex: 1,
                    ),
                    // TODO: Button will be inside Form for submit or validate.
                    const SizedBox(height: 50),

                    Center(
                      child: ButtonAlreadyHaveAccount(
                        onPressed: () {},
                        buttonText:
                            Constants.kStringButtonVerificationResendCode,
                      ),
                    ),
                    const SizedBox(height: 20),
                    // TODO: Remove Opacity
                    const Opacity(opacity: 0, child: FormCustumInputField()),
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
