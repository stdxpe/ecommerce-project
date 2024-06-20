import 'package:flutter/material.dart';

import 'package:ecommerce_project/ui/screens/searchbox_delegate.dart';
import 'package:ecommerce_project/ui/widgets/slivers_and_appbars/app_bar_standart_back_button.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    print('Profile Screen executed');
    print('carried string: ');

    return Scaffold(
      appBar: const AppBarStandartBackButton(),
      body: ElevatedButton(
        onPressed: () async {
          await showSearch(
            context: context,
            query: '',
            delegate: CustomSearchDelegate(),
          );
        },
        child: const Text('??'),
      ),
    );
  }
}
