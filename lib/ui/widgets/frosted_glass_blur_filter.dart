import 'package:flutter/material.dart';
import 'dart:ui';

class FrostedGlassBlurFilter extends StatelessWidget {
  final double? height;
  final double? width;
  final Color? blurColor;
  final double? blurColorTransparency;
  final double? blurPercent;

  const FrostedGlassBlurFilter({
    this.height,
    this.width,
    this.blurPercent,
    this.blurColor,
    this.blurColorTransparency = 0.3,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: blurPercent ?? 10.0,
          sigmaY: blurPercent ?? 10.0,
        ),
        child: Container(
          width: width ?? size.width,
          height: height ?? size.height,
          decoration: BoxDecoration(
            color: Colors.grey.shade200.withOpacity(blurColorTransparency!),
            // color: blurColor!.withOpacity(blurColorTransparency!),
          ),
        ),
      ),
    );
  }
}
