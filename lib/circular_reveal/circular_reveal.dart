import 'package:flutter/material.dart';
import 'package:circular_reveal_flutter/circular_reveal/painter.dart';
import 'dart:async';

class Circular extends StatefulWidget {

  int stateType;
  Circular(int stateType){
    this.stateType=stateType;
  }


  @override
  CircularState createState() => CircularState(stateType);
}

class CircularState extends State<Circular> with TickerProviderStateMixin {

  int stateType;
  CircularState(int stateType){
    this.stateType = stateType;
  }

  Animation _animation;
  double _fraction = 0.0;

  void initState() {
    super.initState();

    if (stateType == 0){
      reveal();
    }
    else if (stateType == 1) {
      hide();
    }
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
        painter: CircularAnimationPainter(_fraction, MediaQuery.of(context).size),
      );
  }



  void reveal() {
    AnimationController controller =
        AnimationController(duration: Duration(milliseconds: 1000), vsync: this);
    _animation = Tween(begin: 0.0, end: 1.0).animate(controller)
      ..addListener(() {
        setState(() {
          _fraction = _animation.value;
        });
      });
    controller.forward();
  }

  void hide() {
    _fraction=1.0;
    AnimationController controller =
    AnimationController(duration: Duration(milliseconds: 1000), vsync: this);
    _animation = Tween(begin: 0.0, end: 1.0).animate(controller)
      ..addListener(() {
        setState(() {
          _fraction = 1-_animation.value;
        });
      });
    controller.forward();
  }
}
