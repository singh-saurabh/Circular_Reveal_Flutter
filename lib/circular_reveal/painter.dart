import 'package:flutter/material.dart';
import 'dart:math';

class CircularAnimationPainter extends CustomPainter {
  @override
  double _fraction;
  Size _screeesize;

  CircularAnimationPainter(this._fraction, this._screeesize);

  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..style = PaintingStyle.fill
      ..color = Colors.cyan;
    var finalRadius = sqrt(pow(_screeesize.width, 2) +
        pow(_screeesize.height, 2));
    print(finalRadius);
    var radius = finalRadius * _fraction;
    canvas.drawCircle(Offset(size.width / 2, size.height / 2), radius, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
