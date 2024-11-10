import 'package:flutter/material.dart';
import 'package:pro_multimedia/helpers/theme/app_theme.dart';
import 'package:pro_multimedia/screens/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pro Multimedia',
      theme: appTheme,
      home: const SplashScreen(),
    );
  }
}
