import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:ecommerce_project/ui/widgets/background_blur.dart';
import 'package:ecommerce_project/ui/widgets/button_already_have_account.dart';
import 'package:ecommerce_project/ui/widgets/button_main.dart';
import 'package:ecommerce_project/ui/widgets/platform_adaptive_widgets/platform_adaptive_navigator.dart';
import 'package:ecommerce_project/utilities/k_strings.dart';
import 'package:ecommerce_project/utilities/k_text_styles.dart';
import 'package:ecommerce_project/ui/widgets/form_input_field.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Positioned(
            height: size.height,
            width: size.width,
            child: const BackgroundBlur(),
          ),
          SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsetsDirectional.symmetric(horizontal: 30),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 50),
                // color: Colors.red.withOpacity(0.5),
                height: size.height,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SizedBox(height: size.height * 0.05),
                    Text(
                      Constants.kStringSignIntoYourAccount,
                      style: kTitleMidSizeHelveticaLightTextStyle,
                    ),
                    const FormCustumInputField(),
                    // TODO: Button will be inside Form for submit or validate.
                    ButtonMain(
                      paddingHorizontal: 0,
                      onPressed: () {},
                      textColor: Colors.white,
                      buttonColor: const Color(0xFF22252A),
                      text: Constants.kStringSignIn,
                    ),
                    Center(
                      child: ButtonAlreadyHaveAccount(
                        onPressed: () {},
                        textStatic: Constants.kStringAlreadyHaveAnAccount,
                        buttonText: Constants.kStringSignIn,
                        textStaticColor: Colors.white70,
                        buttonTextColor: Colors.white,
                      ),
                    ),
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
                        const SizedBox(width: 25),
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
