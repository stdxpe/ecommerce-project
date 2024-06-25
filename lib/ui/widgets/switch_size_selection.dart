import 'package:flutter/material.dart';

import 'package:ecommerce_project/utilities/k_color_palette.dart';

class SwitchSizeSelection extends StatefulWidget {
  //TODO: When Riverpod arrives, convert to Stateless Widget
  String selectedItem;
  final List items;
  final double? itemSize;
  SwitchSizeSelection({
    required this.selectedItem,
    required this.items,
    this.itemSize = 35,
    super.key,
  });

  @override
  State<SwitchSizeSelection> createState() => _SwitchSizeSelectionState();
}

class _SwitchSizeSelectionState extends State<SwitchSizeSelection> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.items.length,
        itemBuilder: (context, index) {
          return Expanded(
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      widget.selectedItem = widget.items[index];
                    });

                    print(widget.selectedItem.toString());
                  },
                  child: Container(
                    height: widget.itemSize,
                    width: widget.itemSize,
                    decoration: BoxDecoration(
                      boxShadow: [
                        if (widget.items[index] == widget.selectedItem)
                          BoxShadow(
                            color: Colors.black54.withOpacity(0.35),
                            spreadRadius: 0.1,
                            blurRadius: 10,
                            offset: const Offset(0, 1),
                          ),
                      ],
                      shape: BoxShape.circle,
                      color: widget.items[index] == widget.selectedItem
                          ? ColorPalette.kColorDarkButton
                          : Colors.transparent,
                    ),
                    child: Center(
                      child: Text(
                        widget.items[index],
                        style: TextStyle(
                          color: widget.items[index] == widget.selectedItem
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 15),
              ],
            ),
          );
        });
  }
}
