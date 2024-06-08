import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Text Styles w/ GoogleFonts
var kTitleTextStyle = GoogleFonts.roboto(
  textStyle: TextStyle(
    color: Colors.white,
    shadows: [kBoxShadowText],
    fontSize: 60,
    fontWeight: FontWeight.bold,
    letterSpacing: 10,
  ),
);

var kSubtitleTextStyle = GoogleFonts.roboto(
  textStyle: TextStyle(
    color: Colors.white,
    shadows: [kBoxShadowText],
    fontSize: 14,
    fontWeight: FontWeight.w600,
    letterSpacing: 0.7,
  ),
);

/// Text Styles w/ Helvetica
var kTitleHelveticaTextStyle = TextStyle(
  color: Colors.white,
  shadows: [kBoxShadowText],
  fontSize: 60,
  fontWeight: FontWeight.bold,
  letterSpacing: 10,
);

var kSubtitleHelveticaTextStyle = TextStyle(
  color: Colors.white,
  shadows: [kBoxShadowText],
  fontSize: 14,
  fontWeight: FontWeight.w600,
  letterSpacing: 0.7,
);

/// Box Shadows
var kBoxShadowText = BoxShadow(
  color: Colors.black54.withOpacity(0.70),
  spreadRadius: 0.1,
  blurRadius: 10,
  offset: const Offset(0, 3.5),
);
