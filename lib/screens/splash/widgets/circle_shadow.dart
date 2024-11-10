import 'package:flutter/material.dart';

class CircleShadow extends StatelessWidget {
  final double radius;

  const CircleShadow({super.key, required this.radius});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: radius * 2,
      height: radius * 2,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: RadialGradient(
          colors: [
            Colors.white.withOpacity(0.8),
            Colors.white.withOpacity(0.5),
            Colors.white.withOpacity(0),
          ],
          stops: const [0, 0.4, 1],
        ),
      ),
    );
  }
}
