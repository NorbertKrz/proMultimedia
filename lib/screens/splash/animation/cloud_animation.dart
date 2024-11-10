import 'dart:math';
import 'package:flutter/material.dart';

class MovingCloud extends StatefulWidget {
  final Widget widget;
  const MovingCloud({super.key, required this.widget});

  @override
  State<MovingCloud> createState() => _MovingCloudState();
}

class _MovingCloudState extends State<MovingCloud>
    with TickerProviderStateMixin {
  late AnimationController _controller;

  final double radiusX = 4;
  final double radiusY = 2;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 6),
    )..repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            double x = radiusX * sin(_controller.value * 2 * pi);
            double y = radiusY * cos(_controller.value * 2 * pi);

            return Transform.translate(
              offset: Offset(x, y),
              child: child,
            );
          },
          child: widget.widget),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
