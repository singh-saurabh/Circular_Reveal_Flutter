import 'package:flutter/material.dart';
import 'package:circular_reveal_flutter/circular_reveal/painter.dart';
import 'dart:async';

class Circular extends StatefulWidget {
  @override
  CircularState createState() => CircularState();
}

class CircularState extends State<Circular> with TickerProviderStateMixin {
  Animation _animation;
  double _fraction = 0.0;

  @override
  void initState() {
    super.initState();

    Timer(Duration(milliseconds: 8000), () {
      reveal();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomPaint(
        painter: CircularAnimationPainter(_fraction, MediaQuery.of(context).size),
      ),
    );
  }

  void reveal() {
    AnimationController controller =
        AnimationController(duration: Duration(milliseconds: 4000), vsync: this);
    _animation = Tween(begin: 0.0, end: 1.0).animate(controller)
      ..addListener(() {
        setState(() {
          _fraction = _animation.value;
        });
      });
    controller.forward();
  }
}
