import 'package:flutter/material.dart';

class SliverAppBarSnappable extends StatelessWidget {
  const SliverAppBarSnappable({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SliverAppBar(
      primary: true,
      floating: true,
      snap: true,
      // pinned: true,
      // expandedHeight: 40,
      // collapsedHeight: 55,
      // toolbarHeight: 0,
      forceElevated: true,
      backgroundColor: Colors.green,
      automaticallyImplyLeading: false,
      bottom: PreferredSize(
        preferredSize: Size(size.width, 40),
        child: Container(
            width: size.width,
            height: 40,
            color: Colors.red,
            child: const Center(child: Text('bottom side'))),
      ),

      // flexibleSpace: FlexibleSpaceBar(
      //   // collapseMode: CollapseMode.pin,
      //   background: ConstrainedBox(
      //     constraints: BoxConstraints(maxHeight: 50, minWidth: 50),
      //     child: ListView.builder(
      //       itemCount: 20,
      //       scrollDirection: Axis.horizontal,
      //       itemBuilder: (context, index) => Padding(
      //         padding: const EdgeInsets.symmetric(horizontal: 10),
      //         child: Container(
      //           color: Colors.white54,
      //           height: 50,
      //           width: 50,
      //           child: Center(child: Text(index.toString())),
      //         ),
      //         // Chip(
      //         //   elevation: 50,
      //         //   label: Text(index.toString()),
      //         // ),
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
