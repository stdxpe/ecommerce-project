import 'package:flutter/material.dart';

import 'package:ecommerce_project/ui/widgets/filter_related/single_size_picker_circular_button.dart';
import 'package:ecommerce_project/utilities/k_constants.dart';
import 'package:ecommerce_project/utilities/k_text_styles.dart';

class SwitchFilterSizeSelector extends StatefulWidget {
  //TODO: When Riverpod arrives, convert to Stateless Widget

  String selectedItem;
  final List items;
  final double? itemSize;
  final double? paddingHorizontal;
  final double? itemPaddingHorizontal;

  SwitchFilterSizeSelector({
    required this.selectedItem,
    required this.items,
    this.itemSize = 40,
    this.paddingHorizontal = Constants.kPaddingHorizontalMain,
    this.itemPaddingHorizontal = Constants.kPaddingBetweenElementsMain,
    super.key,
  });

  @override
  State<SwitchFilterSizeSelector> createState() =>
      _SwitchFilterSizeSelectorState();
}

class _SwitchFilterSizeSelectorState extends State<SwitchFilterSizeSelector> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: widget.paddingHorizontal!,
            right: widget.paddingHorizontal!,
          ),
          child: const Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Size',
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
                    child: SingleSizePickerCircularButton(
                      item: item,
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
