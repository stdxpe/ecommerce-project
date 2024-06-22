import 'package:flutter/material.dart';

import 'package:ecommerce_project/ui/screens/search_screen.dart';
import 'package:ecommerce_project/ui/widgets/icon_buttons/search_icon_button.dart';
import 'package:ecommerce_project/ui/widgets/icon_buttons/x_icon_button.dart';

class SearchBoxCustomDelegate extends SearchDelegate {
  @override
  TextStyle? get searchFieldStyle => const TextStyle().copyWith(
        fontSize: 20,
        color: Colors.black,
      );

  @override
  InputDecorationTheme? get searchFieldDecorationTheme =>
      const InputDecorationTheme().copyWith(
        hintStyle: TextStyle(
          fontSize: 20,
          color: Colors.black.withOpacity(0.6),
        ),
        // labelStyle: TextStyle(fontSize: 5),
        border: InputBorder.none,
      );

  @override
  TextInputAction get textInputAction => TextInputAction.search;

  @override
  void showResults(BuildContext context) {
    // buildResults(context);
    super.showResults(context);
  }

  // @override
  // void showSuggestions(BuildContext context) {
  //   super.showSuggestions(context);
  // }

  // @override
  // void dispose() {
  //   super.dispose();
  // }

  @override
  PreferredSizeWidget? buildBottom(BuildContext context) {
    return super.buildBottom(context);
  }

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      XIconButton(
        iconThemeSize: 18,
        iconThemeColor: Colors.black87,
        onPressed: () {
          query = '';
          buildSuggestions(context);
        },
      ),
      SearchIconButton(
        iconThemeSize: 24,
        iconThemeColor: Colors.black87,
        onPressed: () {
          // buildResults(context);
          showResults(context);
        },
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    automaticallyImplyLeading = true;

    const IconThemeData(
      color: Colors.black87,
      size: 24,
      // shadows:
    );
    // return IconButton(
    //   onPressed: () {
    //     Navigator.of(context).pop();
    //   },
    //   icon: const Icon(
    //     CupertinoIcons.chevron_back,
    //     color: Colors.black,
    //     size: 24,
    //   ),
    // );
  }

  @override
  Widget buildResults(BuildContext context) {
    automaticallyImplyLeading = true;

    return SearchScreen(query: query);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Container();

    // Center(
    //   child: Text(
    //     Strings.kStringSearchInitialText,
    //   ),
    // );
  }
}
