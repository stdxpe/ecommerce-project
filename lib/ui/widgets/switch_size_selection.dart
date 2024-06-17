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
    return Row(
      children: widget.items.map(
        (element) {
          return Row(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    widget.selectedItem = element;
                  });

                  print(widget.selectedItem.toString());
                },
                child: Container(
                  height: widget.itemSize,
                  width: widget.itemSize,
                  decoration: BoxDecoration(
                    boxShadow: [
                      if (element == widget.selectedItem)
                        BoxShadow(
                          color: Colors.black54.withOpacity(0.35),
                          spreadRadius: 0.1,
                          blurRadius: 10,
                          offset: const Offset(0, 1),
                        ),
                    ],
                    shape: BoxShape.circle,
                    color: element == widget.selectedItem
                        ? ColorPalette.kColorModalBottomSheet
                        : Colors.transparent,
                  ),
                  child: Center(
                    child: Text(element),
                  ),
                ),
              ),
              const SizedBox(width: 15),
            ],
          );
        },
      ).toList(),
    );
  }
}


// SizedBox(width: 20),
//         Container(
//           height: 65,
//           width: 65,
//           decoration: BoxDecoration(
//             // boxShadow: [kBoxShadowText],
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.black54.withOpacity(0.35),
//                 spreadRadius: 0.1,
//                 blurRadius: 10,
//                 offset: Offset(0, 1),
//               ),
//             ],
//             shape: BoxShape.circle,
//             color: Colors.red,
//             border: Border.all(
//               width: 5,
//               color: Colors.white,
//               style: BorderStyle.solid,
//               strokeAlign: BorderSide.strokeAlignInside,
//             ),
//           ),
//         ),