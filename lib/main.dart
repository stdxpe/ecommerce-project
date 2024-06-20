import 'package:flutter/material.dart';

import 'ui/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ECommerce Project',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'Helvetica',
      ),
      home: const SplashScreen(),
    );
  }
}
