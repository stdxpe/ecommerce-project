import 'package:flutter/material.dart';

class SliverListviewBuilder extends StatelessWidget {
  const SliverListviewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SliverList.builder(
      itemBuilder: (context, index) {
        return Container(
          height: 200,
          width: size.width,
          color: Colors.blue,
          child: Center(
            child: Text(
              index.toString(),
              style: const TextStyle(color: Colors.black, fontSize: 45),
            ),
          ),
        );
      },
    );
  }
}
