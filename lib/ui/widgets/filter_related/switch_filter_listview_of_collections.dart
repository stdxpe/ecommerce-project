import 'package:flutter/material.dart';

import 'package:ecommerce_project/ui/widgets/filter_related/filter_card_horizontal_mini.dart';
import 'package:ecommerce_project/utilities/k_constants.dart';

class SwitchFilterListviewOfCollections extends StatefulWidget {
  final List list;
  List? selectedFilterList;

  SwitchFilterListviewOfCollections({
    required this.list,
    this.selectedFilterList,
    super.key,
  });

  @override
  State<SwitchFilterListviewOfCollections> createState() =>
      _SwitchFilterListviewOfCollectionsState();
}

class _SwitchFilterListviewOfCollectionsState
    extends State<SwitchFilterListviewOfCollections> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    print(widget.selectedFilterList);

    return ListView.builder(
      // padding: EdgeInsets.zero,
      shrinkWrap: true,
      clipBehavior: Clip.none,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.only(
        left: Constants.kPaddingHorizontalMain,
        right: Constants.kPaddingHorizontalMain,
        // top: 5,
        // top: Constants.kPaddingHorizontalMain,
      ),
      itemCount: widget.list.length,
      itemBuilder: (context, index) {
        bool isSelected =
            widget.selectedFilterList!.contains(widget.list[index])
                ? true
                : false;

        return Padding(
          padding: const EdgeInsets.only(
              bottom: Constants.kPaddingBetweenElementsMain * 2),
          child: GestureDetector(
            onTap: () {
              if (isSelected) {
                widget.selectedFilterList!.remove(widget.list[index]);
              } else {
                widget.selectedFilterList!.add(widget.list[index]);
              }
              setState(() {});
            },
            child: FilterCardHorizontalMini(
              isSelected: isSelected,
              cardWidth: size.width,
              cardHeight: 50,
              text: widget.list[index],
            ),
          ),
        );
      },
    );
  }
}
