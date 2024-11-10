import 'package:flutter/material.dart';

class SplashImage extends StatelessWidget {
  final String imagePath;

  const SplashImage({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePath,
      fit: MediaQuery.of(context).orientation == Orientation.portrait
          ? BoxFit.fitWidth
          : BoxFit.fitHeight,
    );
  }
}
