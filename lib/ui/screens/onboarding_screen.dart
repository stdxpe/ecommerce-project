import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_project/ui/screens/sign_in_screen.dart';
import 'package:ecommerce_project/ui/widgets/button_main.dart';
import 'package:ecommerce_project/ui/widgets/platform_adaptive_widgets/platform_adaptive_navigator.dart';
import 'package:ecommerce_project/ui/widgets/switch_indexer_dots.dart';
import 'package:ecommerce_project/utilities/k_strings.dart';
import 'package:ecommerce_project/utilities/k_text_styles.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SizedBox(
          width: size.width,
          height: size.height * 0.8,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                Constants.kStringBrowseTitle,
                style: kTitleMidSizeHelveticaDarkTextStyle,
              ),
              Text(
                Constants.kStringBrowseSubtitle,
                style: kSubtitleHelveticaDarkTextStyle,
                textAlign: TextAlign.center,
              ),
              CarouselSlider.builder(
                itemCount: 15,
                options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: true,
                  viewportFraction: 0.75,
                  enableInfiniteScroll: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                  aspectRatio: 1.1,
                  autoPlayInterval: const Duration(seconds: 4),
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeFactor: 0.3,
                  scrollDirection: Axis.horizontal,
                ),
                itemBuilder:
                    (BuildContext context, int itemIndex, int pageViewIndex) =>
                        Container(
                  height: size.height * 0.35,
                  width: size.width * 0.65,
                  color: Colors.red,
                ),
              ),
              const SwitchIndexerDots(listItemCount: 6, currentIndex: 3),
              ButtonMain(
                onPressed: () {
                  PlatformAdaptiveNavigator().push(context, SignInScreen());
                },
                textColor: Colors.white,
                buttonColor: const Color(0xFF22252A),
                text: Constants.kStringButtonStartShopping,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
