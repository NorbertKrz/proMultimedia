import 'package:flutter/material.dart';

class CloudBig extends StatelessWidget {
  const CloudBig({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: const Size(180, 100),
      painter: CloudPainter(),
    );
  }
}

class CloudPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    final path = Path();

    path.moveTo(size.width * 0.25, size.height * 0.44);
    path.arcToPoint(Offset(size.width * 0.45, size.height * 0.4),
        radius: const Radius.circular(1), clockwise: true);
    path.arcToPoint(Offset(size.width * 0.52, size.height * 0.88),
        radius: const Radius.circular(1), clockwise: true);
    path.lineTo(size.width * 0.05, size.height * 0.88);
    path.arcToPoint(Offset(size.width * 0.05, size.height * 0.5),
        radius: const Radius.circular(1), clockwise: true);
    path.arcToPoint(Offset(size.width * 0.35, size.height * 0.5),
        radius: const Radius.circular(1), clockwise: true);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
