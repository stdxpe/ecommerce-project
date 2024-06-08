import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:ecommerce_project/ui/screens/onboarding_screen.dart';
import 'package:ecommerce_project/ui/widgets/platform_adaptive_widgets/platform_adaptive_navigator.dart';
import 'package:ecommerce_project/ui/widgets/button_main.dart';
import 'package:ecommerce_project/utilities/k_strings.dart';
import 'package:ecommerce_project/utilities/k_text_styles.dart';
import 'package:ecommerce_project/ui/widgets/button_already_have_account.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: size.width,
            height: size.height,
            color: Colors.white.withOpacity(0.2),
            child: Image.asset(
              '/Users/dxpe/projects/ecommerce-project/assets/images/pose${0}.jpg',
              filterQuality: FilterQuality.high,
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  Constants.kStringAppTitle,
                  style: kTitleHelveticaLightTextStyle,
                ),
                const SizedBox(height: 10),
                Text(
                  Constants.kStringAppSubtitle,
                  style: kSubtitleHelveticaLightTextStyle,
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 70,
            width: size.width,
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ButtonMain(
                  text: Constants.kStringEmailButtonText,
                  icon: const Icon(
                    CupertinoIcons.mail_solid,
                    size: 16,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
                const SizedBox(height: 20),
                ButtonMain(
                  text: Constants.kStringFacebookButtonText,
                  textColor: Colors.white,
                  buttonColor: const Color(0xFF22252A),
                  icon: const Icon(
                    CupertinoIcons.lock,
                    size: 16,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    PlatformAdaptiveNavigator()
                        .push(context, OnboardingScreen());
                  },
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
          Positioned(
            top: 50,
            right: 20,
            child: ButtonAlreadyHaveAccount(
              onPressed: () {},
              buttonText: Constants.kStringSignIn,
            ),
          ),
        ],
      ),
    );
  }
}
