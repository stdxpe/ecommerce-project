import 'package:flutter/material.dart';

import 'package:ecommerce_project/utilities/k_text_styles.dart';

class TitleAppBarMain extends StatelessWidget {
  const TitleAppBarMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Fancy',
      style: kTitleMidSizeHelveticaDarkTextStyle,
    );
  }
}
