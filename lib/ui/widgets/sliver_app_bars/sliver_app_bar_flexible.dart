import 'package:flutter/material.dart';

class SliverAppBarFlexible extends StatelessWidget {
  final Widget content;
  final Widget? indexer;
  final double? expandedHeight;

  const SliverAppBarFlexible({
    super.key,
    required this.content,
    this.expandedHeight,
    this.indexer,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      // primary: true,
      // floating: true,
      // snap: true,
      // pinned: true,
      // expandedHeight: size.height * 0.35,
      expandedHeight: expandedHeight ?? 300,
      // collapsedHeight: 0,
      // toolbarHeight: 300,
      backgroundColor: Colors.yellow,
      automaticallyImplyLeading: false,
      flexibleSpace: FlexibleSpaceBar(
        background: content,
        // TODO: PARALLAX SLIVER APP BAR TO CHANGE
        collapseMode: CollapseMode.parallax,
      ),
    );
  }
}
