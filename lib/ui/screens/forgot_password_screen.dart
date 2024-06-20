import 'package:flutter/material.dart';

import 'package:ecommerce_project/ui/screens/verification_screen.dart';
import 'package:ecommerce_project/ui/widgets/platform_adaptive_widgets/platform_adaptive_navigator.dart';
import 'package:ecommerce_project/utilities/k_strings_en.dart';
import 'package:ecommerce_project/ui/widgets/buttons/button_main.dart';
import 'package:ecommerce_project/utilities/k_text_styles.dart';
import 'package:ecommerce_project/ui/widgets/textfields/form_input_field.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

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
                // color: Colors.red.withOpacity(0.5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Strings.kStringForgotPasswordTitle,
                      style: kTitleMidSizeHelveticaDarkTextStyle,
                    ),
                    const SizedBox(height: 10),
                    Text(
                      Strings.kStringForgotPasswordSubtitle,
                      style: kSubtitleHelveticaDarkTextStyle,
                    ),
                    const SizedBox(height: 30),
                    const FormCustumInputField(),
                    // TODO: Button will be inside Form for submit or validate.
                    const SizedBox(height: 30),
                    ButtonMain(
                      paddingHorizontal: 0,
                      onPressed: () {
                        PlatformAdaptiveNavigator()
                            .push(context, const VerificationScreen());
                      },
                      textColor: Colors.white,
                      buttonColor: const Color(0xFF22252A),
                      text: Strings.kStringButtonSend,
                    ),
                    const SizedBox(height: 20),
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
