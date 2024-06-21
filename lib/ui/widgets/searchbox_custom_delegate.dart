import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'package:ecommerce_project/ui/screens/search_screen.dart';

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
      IconButton(
        onPressed: () {
          query = '';
          buildSuggestions(context);
        },
        icon: const Icon(
          CupertinoIcons.clear,
          color: Colors.black,
          size: 18,
        ),
      ),
      IconButton(
        onPressed: () {
          // buildResults(context);
          showResults(context);
        },
        icon: const Icon(
          CupertinoIcons.search,
          color: Colors.black,
          size: 24,
        ),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.of(context).pop();
      },
      icon: const Icon(
        CupertinoIcons.chevron_back,
        color: Colors.black,
        size: 24,
      ),
    );
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
