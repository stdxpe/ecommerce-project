import 'package:flutter/material.dart';

import 'package:ecommerce_project/utilities/k_color_palette.dart';
import 'package:ecommerce_project/utilities/k_constants.dart';

class SwitchSizeSelector extends StatefulWidget {
  //TODO: When Riverpod arrives, convert to Stateless Widget
  String selectedItem;
  final List items;
  final double? itemSize;
  final bool? isMaxSized;
  final double? paddingHorizontal;
  final double? itemPaddingHorizontal;

  SwitchSizeSelector({
    required this.selectedItem,
    required this.items,
    this.itemSize = 35,
    this.isMaxSized = true,
    this.paddingHorizontal = Constants.kPaddingHorizontalMain,
    this.itemPaddingHorizontal = 0,
    super.key,
  });

  @override
  State<SwitchSizeSelector> createState() => _SwitchSizeSelectorState();
}

class _SwitchSizeSelectorState extends State<SwitchSizeSelector> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      clipBehavior: Clip.none,
      physics: const ClampingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Container(
        // color: Colors.red.withOpacity(0.5),
        padding: EdgeInsets.symmetric(
          horizontal: widget.paddingHorizontal!,
        ),

        constraints: BoxConstraints(
          minWidth: widget.isMaxSized! ? size.width : 0,
          maxHeight: widget.itemSize!,
          minHeight: widget.itemSize!,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: widget.items.map(
            (element) {
              return Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: widget.itemPaddingHorizontal!,
                ),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      widget.selectedItem = element;
                    });
                  },
                  borderRadius: BorderRadius.circular(30),
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
                        border: Border.all(
                          width: element == widget.selectedItem ? 4 : 0,
                          color: Colors.white,
                          style: BorderStyle.solid,
                          strokeAlign: BorderSide.strokeAlignCenter,
                        ),
                        color: element == widget.selectedItem
                            ? ColorPalette.kColorDarkButton
                            : ColorPalette.kColorModalBottomSheet),
                    child: Center(
                      child: Text(
                        element,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: element == widget.selectedItem
                              ? FontWeight.w600
                              : FontWeight.w500,
                          color: element == widget.selectedItem
                              ? Colors.white
                              : Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
