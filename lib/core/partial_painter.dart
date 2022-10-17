

import 'package:flutter/cupertino.dart';

class PartialPainter extends CustomPainter {
  PartialPainter(
      {required this.radius,
        required this.strokeWidth,
        required this.gradient});

  final Paint paintObject = Paint();
  final double radius;
  final double strokeWidth;
  final Gradient gradient;

  @override
  void paint(Canvas canvas, Size size) {
    Rect topLeftTop = Rect.fromLTRB(0, 0, size.height / 3, strokeWidth);
    Rect topLeftLeft = Rect.fromLTRB(0, 0, strokeWidth, size.height / 3);

    Rect bottomRightBottom = Rect.fromLTRB(size.width - size.height / 3,
        size.height - strokeWidth, size.width, size.height);
    Rect bottomRightRight = Rect.fromLTRB(size.width - strokeWidth,
        size.height * 3 / 4.5, size.width, size.height);

    paintObject.shader = gradient.createShader(Offset.zero & size);

    Path topLeftPath = Path()
      ..addRect(topLeftTop)
      ..addRect(topLeftLeft);

    Path bottomRightPath = Path()
      ..addRect(bottomRightBottom)
      ..addRect(bottomRightRight);

    Path finalPath =
    Path.combine(PathOperation.union, topLeftPath, bottomRightPath);

    canvas.drawPath(finalPath, paintObject);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}