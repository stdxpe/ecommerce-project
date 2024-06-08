import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
  fontWeight: FontWeight.bold,
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
