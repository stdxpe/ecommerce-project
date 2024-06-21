import 'package:flutter/material.dart';

import 'package:ecommerce_project/models/user_model.dart';
import 'package:ecommerce_project/utilities/k_color_palette.dart';
import 'package:ecommerce_project/utilities/k_constants.dart';
import 'package:ecommerce_project/utilities/k_text_styles.dart';

class UserProfileCard extends StatelessWidget {
  final UserModel userModel;
  final Function? onPressed;
  final double cardHeight;
  final double cardWidth;
  final bool? isBorderElevated;
  final double? elevation;
  final TextStyle? textStylePrimary;
  final TextStyle? textStyleSecondary;

  const UserProfileCard({
    required this.userModel,
    this.onPressed,
    required this.cardHeight,
    required this.cardWidth,
    this.isBorderElevated = false,
    this.elevation = 5,
    this.textStylePrimary = kUserProfileTextStyleTitle,
    this.textStyleSecondary = kUserProfileTextStyleSubtitle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onPressed != null) onPressed!();
        // PlatformAdaptiveNavigator()
        //     .push(context, ProductDetailsScreen(product: product));
      },
      child: Container(
        clipBehavior: Clip.none,
        height: cardHeight + 15,
        width: cardWidth,
        child: Center(
          child: Card(
            // color: Colors.green.withOpacity(0.5),
            color: ColorPalette.kColorModalBottomSheet,
            elevation: isBorderElevated! ? elevation : 0,
            clipBehavior: Clip.none,
            margin: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                Constants.kRadiusCardPrimary,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Card(
                    elevation: elevation,
                    shape: const CircleBorder(),
                    clipBehavior: Clip.hardEdge,
                    margin: EdgeInsets.zero,
                    child: Image.asset(
                      height: cardHeight,
                      width: cardHeight,
                      userModel.profilePhoto,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          userModel.name,
                          overflow: TextOverflow.ellipsis,
                          softWrap: true,
                          maxLines: 1,
                          style: textStylePrimary,
                        ),
                        Text(
                          userModel.email,
                          overflow: TextOverflow.ellipsis,
                          softWrap: true,
                          maxLines: 1,
                          style: textStyleSecondary,
                        ),
                        Text(
                          userModel.phone,
                          overflow: TextOverflow.ellipsis,
                          softWrap: true,
                          maxLines: 1,
                          style: textStyleSecondary,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
