import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// APP WIDE TEXT STYLES

/// Text Styles w/ GoogleFonts
var kTitleTextStyle = GoogleFonts.roboto(
  textStyle: TextStyle(
    color: Colors.white,
    shadows: [kBoxShadowLightText],
    fontSize: 60,
    fontWeight: FontWeight.bold,
    letterSpacing: 10,
  ),
);

var kSubtitleTextStyle = GoogleFonts.roboto(
  textStyle: TextStyle(
    color: Colors.white,
    shadows: [kBoxShadowLightText],
    fontSize: 14,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.7,
  ),
);

/// Text Styles w/ Helvetica
var kTitleHelveticaLightTextStyle = TextStyle(
  color: Colors.white,
  shadows: [kBoxShadowLightText],
  fontSize: 60,
  fontWeight: FontWeight.w600,
  letterSpacing: 10,
);

var kSubtitleHelveticaLightTextStyle = TextStyle(
  color: Colors.white,
  shadows: [kBoxShadowLightText],
  fontSize: 14,
  fontWeight: FontWeight.w600,
  letterSpacing: 0.7,
);

var kTitleMidSizeHelveticaLightTextStyle = TextStyle(
  color: Colors.white,
  shadows: [kBoxShadowLightText],
  fontSize: 25,
  fontWeight: FontWeight.bold,
  letterSpacing: 0.1,
);

var kTitleMidSizeHelveticaDarkTextStyle = TextStyle(
  color: Colors.black,
  shadows: [kBoxShadowLightText],
  fontSize: 25,
  fontWeight: FontWeight.bold,
  letterSpacing: 0.1,
);

var kSubtitleHelveticaDarkTextStyle = TextStyle(
  color: Colors.black,
  shadows: [kBoxShadowLightText],
  fontSize: 13,
  fontWeight: FontWeight.w600,
  letterSpacing: 0.3,
);

var kTitleHomeScreenCollectionsHelveticaDarkTextStyle = const TextStyle(
  color: Colors.black,
  // shadows: [kBoxShadowLightText],
  fontSize: 18.5,
  fontWeight: FontWeight.w600,
  letterSpacing: 0.2,
);
var kTitleHomeScreenButtonCollectionsHelveticaDarkTextStyle = const TextStyle(
  color: Colors.black54,
  // shadows: [kBoxShadowLightText],
  fontSize: 10,
  fontWeight: FontWeight.w600,
  letterSpacing: 0,
);

var kProductCollectionPrimaryHelveticaDarkTextStyle = const TextStyle(
  color: Colors.black,
  // shadows: [kBoxShadowLightText],
  fontSize: 11,
  fontWeight: FontWeight.w500,
  letterSpacing: 0,
  height: 1.2,
);
var kProductCollectionSecondaryHelveticaDarkTextStyle = const TextStyle(
  color: Colors.black54,
  // shadows: [kBoxShadowLightText],
  fontSize: 8,
  fontWeight: FontWeight.w400,
  letterSpacing: 0.1,
  height: 1.0,
);

const kCardTextStylePrimary = TextStyle(
  color: Colors.black,
  // shadows: [kBoxShadowLightText],
  fontSize: 11,
  fontWeight: FontWeight.w500,
  letterSpacing: 0,
  height: 1.2,
);

const kCardTextStyleSecondary = TextStyle(
  color: Colors.black54,
  // shadows: [kBoxShadowLightText],
  fontSize: 8,
  fontWeight: FontWeight.w400,
  letterSpacing: 0.1,
  height: 1.0,
);

const kDialogPopupCardTextStylePrimary = TextStyle(
  color: Colors.white,
  // shadows: [kBoxShadowLightText],
  fontSize: 40,
  fontWeight: FontWeight.w700,
  letterSpacing: 0.5,
  height: 1.2,
);

const kDialogPopupCardTextStyleSecondary = TextStyle(
  color: Colors.white,
  // shadows: [kBoxShadowLightText],
  fontSize: 13,
  fontWeight: FontWeight.w700,
  letterSpacing: 0.1,
  height: 1.2,
);

const kTitleMainTextStyle = TextStyle(
  color: Colors.black,
  // shadows: [kBoxShadowLightText],
  fontSize: 28,
  fontWeight: FontWeight.w700,
  letterSpacing: 0,
  height: 1.1,
);

const kItemsFoundTextStyle = TextStyle(
  color: Colors.black45,
  fontSize: 12,
  fontWeight: FontWeight.w500,
  letterSpacing: 0.15,
  height: 1,
);

const kWishlistItemsTextStylePrimary = TextStyle(
  color: Colors.black,
  fontSize: 14,
  fontWeight: FontWeight.w500,
  letterSpacing: 0.35,
  height: 1.3,
);

const kWishlistItemsTextStyleSecondary = TextStyle(
  color: Colors.black54,
  fontSize: 10,
  fontWeight: FontWeight.w500,
  letterSpacing: 0.65,
  height: 1.2,
);

var kShoppingCartBottomCardTextStylePrimary = TextStyle(
  color: Colors.black.withOpacity(0.5),
  fontSize: 13,
  fontWeight: FontWeight.w500,
  letterSpacing: 0.35,
  height: 1.3,
);

const kShoppingCartBottomCardTextStyleSecondary = TextStyle(
  color: Colors.black,
  fontSize: 15,
  fontWeight: FontWeight.w600,
  letterSpacing: 0.5,
  height: 1.3,
);

/// Box Shadows
var kBoxShadowLightText = BoxShadow(
  color: Colors.black54.withOpacity(0.1),
  spreadRadius: 0.1,
  blurRadius: 10,
  offset: const Offset(0, 3.5),
);

var kBoxShadowDarkText = BoxShadow(
  color: Colors.white60.withOpacity(1),
  spreadRadius: 0.1,
  blurRadius: 10,
  offset: const Offset(0, 3.5),
);

var kBoxShadowContainer = BoxShadow(
  color: Colors.black54.withOpacity(0.35),
  spreadRadius: -5,
  blurRadius: 10,
  offset: const Offset(0, 8),
);
