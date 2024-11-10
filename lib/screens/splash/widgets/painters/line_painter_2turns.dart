import 'package:flutter/material.dart';

class LinePainter2Turns extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = const Color.fromARGB(255, 197, 197, 197)
      ..strokeWidth = 1
      ..style = PaintingStyle.stroke;

    Path path = Path();

    double arcHeight = size.height * 0.25;
    double arcRadius = size.height * 0.05;

    path.moveTo(0, size.height / 2);
    path.lineTo(size.width * 0.85, size.height / 2);

    path.relativeArcToPoint(
      Offset(0, arcHeight),
      radius: Radius.circular(arcRadius),
    );
    path.lineTo(size.width * 0.2, size.height * 0.75);

    path.relativeArcToPoint(
      Offset(0, arcHeight),
      radius: Radius.circular(arcRadius),
      clockwise: false,
    );
    path.lineTo(size.width * 0.9, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
