import 'package:flutter/material.dart';

class SwitchColorSelection extends StatefulWidget {
  //TODO: When Riverpod arrives, convert to Stateless Widget
  Color selectedItem;
  final List items;
  final double? itemSize;
  SwitchColorSelection({
    required this.selectedItem,
    required this.items,
    this.itemSize = 30,
    super.key,
  });

  @override
  State<SwitchColorSelection> createState() => _SwitchColorSelectionState();
}

class _SwitchColorSelectionState extends State<SwitchColorSelection> {
  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: widget.items.map(
        (element) {
          return Row(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    widget.selectedItem = element;
                  });

                  // print(widget.selectedItem.toString());
                },
                child: Container(
                  height: widget.itemSize,
                  width: widget.itemSize,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black54.withOpacity(0.35),
                        spreadRadius: 0.1,
                        blurRadius: 10,
                        offset: const Offset(0, 1),
                      ),
                    ],
                    shape: BoxShape.circle,
                    color: element,
                    border: Border.all(
                      width: element == widget.selectedItem ? 4 : 0,
                      color: Colors.white,
                      style: BorderStyle.solid,
                      strokeAlign: BorderSide.strokeAlignInside,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
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