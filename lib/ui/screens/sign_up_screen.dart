import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:ecommerce_project/ui/screens/forgot_password_screen.dart';
import 'package:ecommerce_project/ui/widgets/platform_adaptive_widgets/platform_adaptive_navigator.dart';
import 'package:ecommerce_project/utilities/k_strings_en.dart';
import 'package:ecommerce_project/ui/widgets/background_blur.dart';
import 'package:ecommerce_project/ui/widgets/button_already_have_account.dart';
import 'package:ecommerce_project/ui/widgets/button_main.dart';
import 'package:ecommerce_project/utilities/k_text_styles.dart';
import 'package:ecommerce_project/ui/widgets/form_input_field.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Stack(
          children: [
            Positioned(
              height: size.height,
              width: size.width,
              child: const BackgroundBlur(),
            ),
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
                      Strings.kStringSignUpTitle,
                      style: kTitleMidSizeHelveticaLightTextStyle,
                    ),
                    const SizedBox(height: 20),
                    const FormCustumInputField(),
                    // TODO: Button will be inside Form for submit or validate.
                    const SizedBox(height: 20),
                    ButtonMain(
                      paddingHorizontal: 0,
                      onPressed: () {
                        PlatformAdaptiveNavigator()
                            .push(context, const ForgotPasswordScreen());
                      },
                      textColor: Colors.white,
                      buttonColor: const Color(0xFF22252A),
                      text: Strings.kStringSignUp,
                    ),
                    const SizedBox(height: 20),
                    Center(
                      child: ButtonAlreadyHaveAccount(
                        onPressed: () {},
                        textStatic: Strings.kStringAlreadyHaveAnAccount,
                        buttonText: Strings.kStringSignIn,
                        textStaticColor: Colors.white70,
                        buttonTextColor: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: ButtonMain(
                            onPressed: () {},
                            paddingHorizontal: 0,
                            paddingRight: 0,
                            buttonColor: Colors.black,
                            icon: const Icon(
                              CupertinoIcons.location_solid,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(width: 20),
                        Expanded(
                          child: ButtonMain(
                            onPressed: () {},
                            paddingHorizontal: 0,
                            paddingLeft: 0,
                            buttonColor: Colors.blue,
                            icon: const Icon(
                              CupertinoIcons.shield_fill,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
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
