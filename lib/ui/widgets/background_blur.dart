import 'package:ecommerce_project/ui/widgets/frosted_glass_blur_filter.dart';
import 'package:flutter/material.dart';

class BackgroundBlur extends StatelessWidget {
  const BackgroundBlur({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: Stack(alignment: Alignment.center, children: [
        Container(
          width: size.width,
          height: size.height,
          color: Colors.white.withOpacity(0.2),
          child: Image.asset(
            '/Users/dxpe/projects/ecommerce-project/assets/images/pose${0}.jpg',
            filterQuality: FilterQuality.high,
            fit: BoxFit.cover,
          ),
        ),
        const FrostedGlassBlurFilter(blurPercent: 30.0),
      ]),
    );
  }
}
