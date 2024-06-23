import 'package:flutter/material.dart';

class PaymentStatusBarDot extends StatelessWidget {
  final double? size;
  final Color? color;
  const PaymentStatusBarDot({
    this.size = 5.5,
    this.color = Colors.black,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
    );
  }
}
