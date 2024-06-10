import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:ecommerce_project/ui/screens/home_screen.dart';
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
          Positioned(
            height: size.height,
            width: size.width,
            child: Image.asset(
              '/Users/dxpe/projects/ecommerce-project/assets/images/pose${1}.jpg',
              filterQuality: FilterQuality.high,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            height: size.height,
            width: size.width,
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.center,
                      end: Alignment.bottomCenter,
                      colors: [
                    Colors.black.withOpacity(0.0),
                    Colors.black.withOpacity(0.3),
                  ])),
            ),
          ),
          SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            child: SizedBox(
              height: size.height,
              width: size.width,
              child: Stack(
                children: [
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
                      children: [
                        ButtonMain(
                          text: Constants.kStringEmailButtonText,
                          icon: const Icon(
                            CupertinoIcons.mail_solid,
                            size: 16,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            PlatformAdaptiveNavigator()
                                .push(context, const OnboardingScreen());
                          },
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
                                .push(context, const HomeScreen());
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
            ),
          ),
        ],
      ),
    );
  }
}
