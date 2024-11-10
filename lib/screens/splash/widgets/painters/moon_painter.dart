import 'package:flutter/material.dart';

class MoonPainter extends StatelessWidget {
  const MoonPainter({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: const Size(200, 200),
      painter: Moon(),
    );
  }
}

class Moon extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    final path = Path();
    Path path1 = Path()
      ..addOval(Rect.fromCircle(
          center: Offset(size.width / 2, size.height / 2),
          radius: size.width / 2));

    Path path2 = Path()
      ..addOval(Rect.fromCircle(
          center: Offset(size.width / 1.6, size.height / 2),
          radius: size.width / 2));

    canvas.drawPath(
      Path.combine(PathOperation.difference, path1, path2),
      paint,
    );
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
