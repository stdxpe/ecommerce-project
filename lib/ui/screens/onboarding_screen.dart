import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_project/ui/screens/sign_in_screen.dart';
import 'package:ecommerce_project/ui/widgets/button_already_have_account.dart';
import 'package:ecommerce_project/ui/widgets/button_main.dart';
import 'package:ecommerce_project/ui/widgets/platform_adaptive_widgets/platform_adaptive_navigator.dart';
import 'package:ecommerce_project/ui/widgets/switch_indexer_dots.dart';
import 'package:ecommerce_project/utilities/k_strings.dart';
import 'package:ecommerce_project/utilities/k_text_styles.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 80, 0, 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            // const SizedBox(height: 60),
            Column(
              children: [
                Text(
                  Constants.kStringBrowseTitle,
                  style: kTitleMidSizeHelveticaDarkTextStyle,
                ),
                const SizedBox(height: 10),
                Text(
                  Constants.kStringBrowseSubtitle,
                  style: kSubtitleHelveticaDarkTextStyle,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            // const SizedBox(height: 20),
            CarouselSlider.builder(
              itemCount: 15,
              options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                viewportFraction: 0.7,
                enableInfiniteScroll: true,
                enlargeStrategy: CenterPageEnlargeStrategy.height,
                aspectRatio: 1.05,
                autoPlayInterval: const Duration(seconds: 4),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeFactor: 0.4,
                scrollDirection: Axis.horizontal,
              ),
              itemBuilder:
                  (BuildContext context, int itemIndex, int pageViewIndex) =>
                      Container(
                margin: const EdgeInsetsDirectional.all(20),
                height: size.height * 0.35,
                width: size.width * 0.65,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.red,
                  boxShadow: [kBoxShadowContainer],
                ),
              ),
            ),
            const SwitchIndexerDots(listItemCount: 6, currentIndex: 3),
            const SizedBox(height: 0),
            ButtonMain(
              onPressed: () {
                PlatformAdaptiveNavigator().push(context, SignInScreen());
              },
              textColor: Colors.white,
              buttonColor: const Color(0xFF22252A),
              text: Constants.kStringButtonStartShopping,
            ),
            ButtonAlreadyHaveAccount(
              onPressed: () {},
              textStatic: Constants.kStringAlreadyHaveAnAccount,
              buttonText: Constants.kStringSignIn,
            ),
          ],
        ),
      ),
    );
  }
}
