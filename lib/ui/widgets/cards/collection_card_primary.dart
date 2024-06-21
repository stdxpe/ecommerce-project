import 'package:flutter/material.dart';

import 'package:ecommerce_project/models/collection.dart';
import 'package:ecommerce_project/ui/screens/collection_details_screen.dart';
import 'package:ecommerce_project/ui/widgets/buttons/button_main.dart';
import 'package:ecommerce_project/ui/widgets/platform_adaptive_widgets/platform_adaptive_navigator.dart';
import 'package:ecommerce_project/utilities/k_color_palette.dart';
import 'package:ecommerce_project/utilities/k_constants.dart';
import 'package:ecommerce_project/utilities/k_text_styles.dart';

class CollectionCardPrimary extends StatelessWidget {
  final Collection collection;
  final Function? onPressed;
  final bool? isRadiusCorners;
  final double cardHeight;
  final double cardWidth;
  final String? bottomText;
  final Widget? bottomContent;
  final double? elevation;
  final TextStyle? textStylePrimary;
  final TextStyle? textStyleSecondary;

  const CollectionCardPrimary({
    required this.collection,
    this.onPressed,
    required this.cardHeight,
    required this.cardWidth,
    this.isRadiusCorners = true,
    this.bottomText,
    this.bottomContent,
    this.elevation = 1.5,
    this.textStylePrimary = kCollectionCardTextStylePrimary,
    this.textStyleSecondary = kCollectionCardTextStyleSecondary,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {
        if (onPressed != null) onPressed!();
        PlatformAdaptiveNavigator()
            .push(context, CollectionDetailsScreen(collection: collection));
      },
      child: Center(
        child: Card(
          elevation: elevation,
          margin: EdgeInsets.zero,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              isRadiusCorners! ? Constants.kRadiusCardPrimary : 0,
            ),
          ),

          /// TODO: isRadiusCorners Clip.none?
          clipBehavior: Clip.hardEdge,
          child: Stack(
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: Image.asset(
                  height: cardHeight,
                  width: cardWidth,
                  collection.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              AspectRatio(
                aspectRatio: 1,
                child: Container(
                  height: cardHeight,
                  width: cardWidth,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 10,
                  ),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          collection.title,
                          overflow: TextOverflow.ellipsis,
                          softWrap: true,
                          maxLines: 3,
                          textAlign: TextAlign.center,
                          style: textStylePrimary?.copyWith(fontSize: 25),
                        ),
                        // SizedBox(height: cardHeight * 0.05),
                        Text(
                          collection.subtitle,
                          overflow: TextOverflow.ellipsis,
                          softWrap: true,
                          maxLines: 2,
                          style: textStyleSecondary?.copyWith(
                              shadows: [kBoxShadowLightText], fontSize: 60),
                        ),
                      ],
                    ),
                  ),
                  // Column(
                  //   crossAxisAlignment: CrossAxisAlignment.start,
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   mainAxisSize: MainAxisSize.min,
                  //   children: [
                  //     if (collection.description != null)
                  //       Text(
                  //         bottomText!,
                  //         overflow: TextOverflow.ellipsis,
                  //         maxLines: 1,
                  //         style: kCardTextStyleSecondary,
                  //       ),
                  //     if (bottomContent != null) bottomContent!,
                  //   ],
                  // )
                ),
              ),
              if (collection.description != null)
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Text(
                        collection.description!,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: textStyleSecondary?.copyWith(fontSize: 13),
                      ),
                    ),
                  ),
                ),
              if (collection.description != null)
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: ButtonMain(
                        text: 'Check Out',
                        textColor: Colors.white,
                        buttonColor: ColorPalette.kColorDarkButton,
                        paddingHorizontal: 0,
                        width: size.width * 0.4,
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
