import 'package:flutter/material.dart';

class SliverListFixed extends StatelessWidget {
  const SliverListFixed({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SliverList(
      delegate: SliverChildListDelegate.fixed(
        [
          Container(
            height: 50,
            width: size.width,
            color: Colors.orange,
          ),
          Container(
            width: size.width,
            height: 50,
            color: Colors.white,
            child: ListView.builder(
              itemCount: 20,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Chip(
                  elevation: 50,
                  label: Text(index.toString()),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
