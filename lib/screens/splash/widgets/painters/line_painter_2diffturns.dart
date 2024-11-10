import 'package:flutter/material.dart';

class LinePainter2DifferentTurns extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = const Color.fromARGB(255, 197, 197, 197)
      ..strokeWidth = 1
      ..style = PaintingStyle.stroke;

    Path path = Path();

    double arcHeight1 = size.height * 0.35;
    double arcHeight2 = size.height * 0.15;
    double arcRadius = size.height * 0.05;

    path.moveTo(size.width, size.height / 2);
    path.lineTo(size.width * 0.2, size.height / 2);

    path.relativeArcToPoint(
      Offset(0, arcHeight1),
      radius: Radius.circular(arcRadius),
      clockwise: false,
    );
    path.lineTo(size.width * 0.75, size.height * 0.85);

    path.relativeArcToPoint(
      Offset(0, arcHeight2),
      radius: Radius.circular(arcRadius),
      clockwise: true,
    );
    path.lineTo(size.width * 0.35, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
