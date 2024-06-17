import 'package:flutter/material.dart';

import 'package:ecommerce_project/utilities/k_strings_en.dart';
import 'package:ecommerce_project/ui/screens/sign_in_screen.dart';
import 'package:ecommerce_project/ui/widgets/button_already_have_account.dart';
import 'package:ecommerce_project/ui/widgets/button_main.dart';
import 'package:ecommerce_project/ui/widgets/carousel_sliders/carousel_seperated.dart';
import 'package:ecommerce_project/ui/widgets/platform_adaptive_widgets/platform_adaptive_navigator.dart';
import 'package:ecommerce_project/ui/widgets/switch_indexer_dots.dart';
import 'package:ecommerce_project/utilities/k_text_styles.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Container(
          height: size.height,
          width: size.width,
          // TODO: Insets gotta be responsive
          padding: const EdgeInsets.fromLTRB(0, 80, 0, 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  // TODO: Title gotta be dynamic/unique to the Carousel Images
                  Text(
                    Strings.kStringOnboardingTitle,
                    style: kTitleMidSizeHelveticaDarkTextStyle,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    Strings.kStringOnboardingSubtitle,
                    style: kSubtitleHelveticaDarkTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              // const SizedBox(height: 20),
              const CarouselSeperated(),
              const SwitchIndexerDots(listItemCount: 6, currentIndex: 3),
              const SizedBox(height: 0),
              ButtonMain(
                onPressed: () {
                  PlatformAdaptiveNavigator()
                      .push(context, const SignInScreen());
                },
                textColor: Colors.white,
                buttonColor: const Color(0xFF22252A),
                text: Strings.kStringButtonOnboarding,
              ),
              ButtonAlreadyHaveAccount(
                onPressed: () {},
                textStatic: Strings.kStringAlreadyHaveAnAccount,
                buttonText: Strings.kStringSignIn,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
