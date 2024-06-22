import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:ecommerce_project/ui/widgets/buttons/button_circular_main.dart';
import 'package:ecommerce_project/utilities/k_color_palette.dart';

class BottomNavigationBarCustom extends StatefulWidget {
  final Function(int index) onPressed;
  final Color? buttonActiveColor;
  final Color? buttonPassiveColor;
  final double? iconSize;
  final double? height;
  final double? width;

  const BottomNavigationBarCustom({
    required this.onPressed,
    this.buttonActiveColor = Colors.orange,
    this.buttonPassiveColor = Colors.white,
    this.iconSize = 20,
    this.height = 55,
    this.width,
    super.key,
  });

  @override
  State<BottomNavigationBarCustom> createState() =>
      _BottomNavigationBarCustomState();
}

class _BottomNavigationBarCustomState extends State<BottomNavigationBarCustom> {
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Color _colorSelector(int index) {
      if (currentIndex == index) {
        return widget.buttonActiveColor!;
      } else {
        return widget.buttonPassiveColor!;
      }
    }

    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: const EdgeInsets.only(
              bottom: 0,
              left: 0,
            ),
            height: widget.height! * 0.5 + 30,
            //(buttonHeight + paddingBottom)
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.white.withOpacity(0.1),
                    Colors.white,
                  ]),
              // borderRadius: BorderRadius.circular(30),
              // color: ColorPalette.kColorDarkButton,
              color: Colors.white,
              // boxShadow: [
              //   BoxShadow(
              //     color: Colors.white.withOpacity(0.5),
              //     spreadRadius: 5,
              //     blurRadius: 10,
              //     offset: const Offset(0, 0),
              //   ),
              // ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 30),
            width: widget.width,
            height: widget.height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: ColorPalette.kColorDarkButton,
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 10,
                  offset: const Offset(0, 0),
                ),
              ],
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  /// HOME ICON
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: ButtonCircularMain(
                      onPressed: () {
                        setState(() {
                          currentIndex = 0;
                        });
                        widget.onPressed(currentIndex);
                        // PlatformAdaptiveNavigator().push(
                        //   context,
                        //   const HomeScreen(),
                        // );
                      },
                      alternativeWidgetContent: SvgPicture.asset(
                        'assets/icons/home-icon.svg',
                        height: widget.iconSize,
                        color: _colorSelector(0),
                      ),
                      buttonColor: ColorPalette.kColorDarkButton,
                      // buttonSize: 30,
                    ),
                  ),

                  /// SEARCH ICON
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: ButtonCircularMain(
                      onPressed: () {
                        setState(() {
                          currentIndex = 1;
                        });
                        widget.onPressed(currentIndex);
                        // PlatformAdaptiveNavigator().push(
                        //   context,
                        //   const DiscoverScreen(),
                        // );
                      },
                      alternativeWidgetContent: SvgPicture.asset(
                        'assets/icons/loupe-icon.svg',
                        height: widget.iconSize,
                        color: _colorSelector(1),
                      ),
                      buttonColor: ColorPalette.kColorDarkButton,
                    ),
                  ),

                  /// WISHLIST ICON
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: ButtonCircularMain(
                      onPressed: () {
                        setState(() {
                          currentIndex = 2;
                        });
                        widget.onPressed(currentIndex);
                        // PlatformAdaptiveNavigator().push(
                        //   context,
                        //   const WishlistScreen(),
                        // );
                      },
                      alternativeWidgetContent: SvgPicture.asset(
                        'assets/icons/heart-icon.svg',
                        height: widget.iconSize,
                        color: _colorSelector(2),
                      ),
                      buttonColor: ColorPalette.kColorDarkButton,

                      // isNotificationOn: true,
                    ),
                  ),

                  /// PROFILE ICON
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: ButtonCircularMain(
                      onPressed: () {
                        setState(() {
                          currentIndex = 3;
                        });
                        widget.onPressed(currentIndex);
                        // PlatformAdaptiveNavigator().push(
                        //   context,
                        //   const ProfileScreen(),
                        // );
                      },
                      alternativeWidgetContent: SvgPicture.asset(
                        'assets/icons/user-icon.svg',
                        height: widget.iconSize,
                        color: _colorSelector(3),
                      ),
                      buttonColor: ColorPalette.kColorDarkButton,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
