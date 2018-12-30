import 'dart:math';

import 'package:flutter/material.dart';

class LoaderTwo extends StatefulWidget {
  final Color color;

  LoaderTwo({Key key, this.color}) : super(key: key);
  _LoaderTwoState createState() => _LoaderTwoState();
}

class _LoaderTwoState extends State<LoaderTwo> with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animationRotation;
  Animation<double> animationRadiusIn;
  Animation<double> animationRadiusOut;

  final double initialRadius = 25.0;
  double radius = 0.0;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2));
    
    animationRadiusIn = Tween<double>(begin: 1.0, end: 0.0).animate(
      CurvedAnimation(parent: controller, curve: Interval(0.75, 1.0, curve: Curves.elasticIn),)
    );
    animationRadiusOut = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: controller, curve: Interval(0.0, 0.25, curve: Curves.elasticOut),)
    );
    animationRotation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: controller, curve: Interval(0.0, 1.0, curve: Curves.linear))
    );

    controller.addListener((){
      if(controller.value >= 0.75 && controller.value <= 1.0) {
        setState(() {                  
          radius = animationRadiusIn.value * initialRadius;
        });
      }else if(controller.value >= 0.0 && controller.value <= 0.25) {
        setState(() {
          radius = animationRadiusOut.value * initialRadius;
        });
      }
    });
    
    controller.repeat();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      width: 100.0,
      child: Center(
        child: RotationTransition(
          turns: animationRotation,
          child: Stack(
            children: <Widget>[
              Dot(radius: 30,color: Colors.black26,),
              Transform.translate(
                offset: Offset(cos(pi/4)*radius, sin(pi/4)*radius),
                child: Dot(radius: 5,color: Colors.red,)),
              Transform.translate(
                offset: Offset(cos(2*pi/4)*radius, sin(2*pi/4)*radius),
                child: Dot(radius: 5,color: Colors.blue,)),
              Transform.translate(
                offset: Offset(cos(3*pi/4)*radius, sin(3*pi/4)*radius),
                child: Dot(radius: 5,color: Colors.orange,)),
              Transform.translate(
                offset: Offset(cos(pi)*radius, sin(pi)*radius),
                child: Dot(radius: 5,color: Colors.green,)),
              Transform.translate(
                offset: Offset(cos(5*pi/4)*radius, sin(5*pi/4)*radius),
                child: Dot(radius: 5,color: Colors.yellow,)),
              Transform.translate(
                offset: Offset(cos(6*pi/4)*radius, sin(6*pi/4)*radius),
                child: Dot(radius: 5,color: Colors.teal,)),
              Transform.translate(
                offset: Offset(cos(7*pi/4)*radius, sin(7*pi/4)*radius),
                child: Dot(radius: 5,color: Colors.pink,)),
              Transform.translate(
                offset: Offset(cos(8*pi/4)*radius, sin(8*pi/4)*radius),
                child: Dot(radius: 5,color: Colors.lightBlue,)),
            ],
          ),
        ),
      ),
    );
  }
}

class Dot extends StatelessWidget {
  final double radius;
  final Color color;

  const Dot({Key key, this.radius, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: radius,
        height: radius,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle
        ),
      ),
    );
  }
}