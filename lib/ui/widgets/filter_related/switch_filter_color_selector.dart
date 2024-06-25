import 'package:flutter/material.dart';

import 'package:ecommerce_project/ui/widgets/filter_related/single_color_picker_circular_button.dart';
import 'package:ecommerce_project/utilities/k_constants.dart';
import 'package:ecommerce_project/utilities/k_text_styles.dart';

class SwitchFilterColorSelector extends StatefulWidget {
  //TODO: When Riverpod arrives, convert to Stateless Widget

  Color selectedItem;
  final List items;
  final bool? isTitleIncluded;
  final double? itemSize;
  final double? paddingHorizontal;
  final double? itemPaddingHorizontal;

  SwitchFilterColorSelector({
    required this.selectedItem,
    required this.items,
    this.isTitleIncluded = true,
    this.itemSize = 40,
    this.paddingHorizontal = Constants.kPaddingHorizontalMain,
    this.itemPaddingHorizontal = Constants.kPaddingBetweenElementsMain,
    super.key,
  });

  @override
  State<SwitchFilterColorSelector> createState() =>
      _SwitchFilterColorSelectorState();
}

class _SwitchFilterColorSelectorState extends State<SwitchFilterColorSelector> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.isTitleIncluded!)
          Padding(
            padding: EdgeInsets.only(
              left: widget.paddingHorizontal!,
              right: widget.paddingHorizontal!,
            ),
            child: const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Color',
                style: kFilterScreenMiniTitleTextStyle,
              ),
            ),
          ),
        Container(
          // width: size.width * 0.5,
          // color: Colors.green.withOpacity(0.5),
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              left: widget.paddingHorizontal!,
              right: widget.paddingHorizontal!,
              top: widget.paddingHorizontal! * 0.5,
              bottom: widget.paddingHorizontal!,
            ),
            physics: const ClampingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: widget.items.map((item) {
                return Container(
                  padding: EdgeInsets.only(
                    right: widget.itemPaddingHorizontal!,
                  ),
                  // color: Colors.red.withOpacity(0.5),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(50),
                    onTap: () {
                      setState(() {
                        widget.selectedItem = item;
                      });
                    },
                    child: SingleColorPickerCircularButton(
                      itemColor: item,
                      isSelected: widget.selectedItem == item ? true : false,
                      itemSize: widget.itemSize,
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}
