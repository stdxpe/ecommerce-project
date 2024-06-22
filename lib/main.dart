import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'ui/screens/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ECommerce Project',
      theme: ThemeData(
        // iconTheme: IconThemeData(
        //   color: Colors.red,
        //   size: 24,
        //   // shadows:
        // ),
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
