import 'package:flutter/material.dart';
import 'dart:math';

class StarPainter extends StatelessWidget {
  const StarPainter({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: const Size(100, 100),
      painter: Star(),
    );
  }
}

class Star extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.amber
      ..style = PaintingStyle.fill;

    final path = Path();
    final radius = size.width / 2;

    for (int i = 0; i < 6; i++) {
      final angle = (i * pi / 3) + (pi / 2);
      final x = radius + radius * cos(angle);
      final y = radius + radius * sin(angle);

      if (i == 0) {
        path.moveTo(x, y);
      } else {
        path.lineTo(x, y);
      }
    }
    path.close();

    final path2 = Path();
    for (int i = 0; i < 6; i++) {
      final angle = (i * pi / 3) + (pi / 6) + (pi / 2);
      final x = radius + radius * cos(angle);
      final y = radius + radius * sin(angle);

      if (i == 0) {
        path2.moveTo(x, y);
      } else {
        path2.lineTo(x, y);
      }
    }
    path2.close();

    canvas.drawPath(path, paint);
    canvas.drawPath(path2, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
