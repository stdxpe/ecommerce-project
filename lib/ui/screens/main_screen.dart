import 'package:flutter/material.dart';

import 'package:ecommerce_project/ui/screens/discover_screen.dart';
import 'package:ecommerce_project/ui/screens/home_screen.dart';
import 'package:ecommerce_project/ui/screens/profile_screen.dart';
import 'package:ecommerce_project/ui/screens/wishlist_screen.dart';
import 'package:ecommerce_project/ui/widgets/bottom_navigation_bar_custom.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int screenIndex = 0;
  final List<Widget> _screens = [
    const HomeScreen(),
    const DiscoverScreen(),
    const WishlistScreen(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: SliverAppBarMain(),
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: IndexedStack(
        index: screenIndex,
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBarCustom(
        iconSize: 18,
        onPressed: (index) {
          setState(() {
            screenIndex = index;
          });
        },
      ),
    );
  }
}
