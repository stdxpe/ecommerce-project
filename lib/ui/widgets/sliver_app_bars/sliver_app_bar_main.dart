import 'package:flutter/material.dart';

class SliverAppBarMain extends StatelessWidget {
  const SliverAppBarMain({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverAppBar(
      // floating: true,
      // snap: true,
      // expandedHeight: 50,
      automaticallyImplyLeading: false,
      pinned: true,
      backgroundColor: Colors.white,
    );
  }
}
