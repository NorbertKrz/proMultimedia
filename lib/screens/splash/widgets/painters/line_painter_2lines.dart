import 'package:flutter/material.dart';

class LinePainter2Lines extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = const Color.fromARGB(255, 197, 197, 197)
      ..strokeWidth = 1
      ..style = PaintingStyle.stroke;

    Path path = Path();

    double lineOffset = size.height * 0.1;

    path.moveTo(0, size.height / 2 - lineOffset);
    path.lineTo(size.width / 2, size.height / 2 - lineOffset);

    path.moveTo(0, size.height);

    path.lineTo(size.width, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
