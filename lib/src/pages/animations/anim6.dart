/**
 * Author: Ambika Dulal
 * profile: https://github.com/Ambikadulal
  */
import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/src/pages/animations/anim5.dart';
import 'package:page_transition/page_transition.dart';

class TransmisionAnimationPage extends StatefulWidget {
    static final String path = "lib/src/pages/animations/anim6.dart";

  @override
  _TransmisionAnimationPageState createState() => _TransmisionAnimationPageState();
}

class _TransmisionAnimationPageState extends State<TransmisionAnimationPage> with TickerProviderStateMixin {
  PageController _pageController;
  AnimationController rippleController;
  AnimationController scaleController;
  Animation<double> rippleAnimation;
  Animation<double> scaleAnimation;

  @override
  void initState() {
    super.initState();

    _pageController = PageController(
      initialPage: 0
    );

    rippleController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1)
    );

    scaleController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1)
    )..addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.push(context, PageTransition(type: PageTransitionType.fade,child: AnimatedListOnePage()));
      }
    });

    rippleAnimation = Tween<double>(
      begin: 80.0,
      end: 90.0
    ).animate(rippleController)..addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        rippleController.reverse();
      } else if(status == AnimationStatus.dismissed) {
        rippleController.forward();
      }
    });

    scaleAnimation = Tween<double>(
      begin: 1.0,
      end: 30.0
    ).animate(scaleController);

    rippleController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          makePage(image: 'https://cdn.pixabay.com/photo/2017/07/31/21/38/people-2561333__340.jpg'),
          makePage(image: 'https://cdn.pixabay.com/photo/2017/07/31/16/32/morning-2558818__340.jpg'),
          makePage(image: 'https://cdn.pixabay.com/photo/2014/11/11/15/24/gym-526995__340.jpg'),
        ],
      ),
    );
  }

  Widget makePage({image}) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(image),
          fit: BoxFit.cover
        )
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.black.withOpacity(.3),
              Colors.black.withOpacity(.3),
            ]
          )
        ),
        child: Padding(
          padding: EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 60,),
              Text('Exerciese 1', style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),),
              SizedBox(height: 40,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("15", style: TextStyle(color: Colors.yellow[400], fontSize: 40, fontWeight: FontWeight.bold),),
                  Text("Minutes", style: TextStyle(color: Colors.white, fontSize: 30),),
                ],
              ),
              SizedBox(height: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("3", style: TextStyle(color: Colors.yellow[400], fontSize: 30, fontWeight: FontWeight.bold),),
                  Text("Exercises", style: TextStyle(color: Colors.white, fontSize: 25),),
                ],
              ),
              SizedBox(height: 80,),
              Align(
                child: Text("Start the morning with your health", 
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w100),),
              ),
              SizedBox(height: 25,),
              Align(
                alignment: Alignment.bottomCenter,
                child: AnimatedBuilder(
                  animation: rippleAnimation,
                  builder: (context, child) => Container(
                    width: rippleAnimation.value,
                    height: rippleAnimation.value,
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue.withOpacity(.4)
                      ),
                      child: InkWell(
                        onTap: () {
                          scaleController.forward();
                        },
                        child: AnimatedBuilder(
                          animation: scaleAnimation,
                          builder: (context, child) => Transform.scale(
                            scale: scaleAnimation.value,
                            child: Container(
                              margin: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.blue
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}