import 'dart:ui';

import 'package:flutter/material.dart';

class SpringySlider extends StatefulWidget {
  final int markCount;
  final Color positiveColor;
  final Color negativeColor;

  SpringySlider({this.markCount, this.positiveColor, this.negativeColor});

  @override
  _SpringySliderState createState() {
    return new _SpringySliderState();
  }
}

class _SpringySliderState extends State<SpringySlider> {
  final double paddingTop = 50.0, paddingBottom = 50.0;
  final double sliderPercent = 0.75;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SliderMarks(
          markCount: widget.markCount,
          color: widget.positiveColor,
          paddingTop: paddingTop,
          paddingBottom: paddingBottom,
          paddingRight: 20.0,
        ),
        ClipPath(
          clipper: SliderClipper(),
          child: Stack(
            children: <Widget>[
              Container(
                color: widget.positiveColor,
              ),
              SliderMarks(
                markCount: widget.markCount,
                color: widget.negativeColor,
                paddingBottom: paddingBottom,
                paddingRight: 20.0,
                paddingTop: paddingTop,
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: paddingTop, bottom: paddingBottom),
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints){
              final height = constraints.maxHeight;
              final sliderY = height  * (1.0 - sliderPercent);
              final pointsYouNeed = (100*(1.0-sliderPercent)).round();
              final pointsYouHave = 100-pointsYouNeed;

              return Stack(
                children: <Widget>[
                  Positioned(
                    left: 30,
                    top: sliderY - 50,
                    child: FractionalTranslation(
                      translation: Offset(0.0,-1.0),
                      child: Points(color: widget.positiveColor,isAboveSlider: true,isPointsYouNeed: true,points: pointsYouNeed,)
                    ),
                  ),
                  Positioned(
                    left: 30,
                    top: sliderY + 50,
                    child: Points(color: widget.negativeColor,isAboveSlider: false,isPointsYouNeed: true,points: pointsYouHave,),
                  )
                ],
              );
            },
          ),
        )
      ],
    );
  }
}

class SliderMarks extends StatelessWidget{
  final int markCount;
  final Color color;
  final double paddingTop;
  final double paddingBottom;  
  final double paddingRight;

  SliderMarks({this.markCount, this.color, this.paddingTop, this.paddingBottom, this.paddingRight});

  @override
    Widget build(BuildContext context) {
      return CustomPaint(
        painter: SliderMarksPainter(
          markCount: markCount,
          color: color,
          paddingTop: paddingTop,
          paddingBottom: paddingBottom,
          markThickness: 2.0,
          paddingRight: paddingRight
        ),
        child: Container(),
      );
    }
}

class SliderMarksPainter extends CustomPainter {
  final double largeMarkWidth = 30.0;
  final double smallMarkWidth = 10.0;

  final int markCount;
  final Color color;
  final double paddingTop, paddingBottom, markThickness, paddingRight;

  final Paint markPaint;

  SliderMarksPainter({this.markCount, this.color, this.paddingTop, this.paddingBottom, this.markThickness, this.paddingRight}):markPaint = Paint()
    ..color=color
    ..strokeWidth=markThickness
    ..style = PaintingStyle.stroke
    ..strokeCap=StrokeCap.round;



  @override
  void paint(Canvas canvas, Size size) {
    final paintHeight = size.height - paddingTop - paddingBottom;
    final gap = paintHeight / (markCount - 1);
    for (var i = 0; i < markCount; i++) {
      double markWidth = smallMarkWidth;
      if(i == 0 || i == (markCount - 1)) {
        markWidth = largeMarkWidth;
      }else {
        markWidth = lerpDouble(smallMarkWidth, largeMarkWidth, 0.5);
      }
      final marky = i * gap + paddingTop;
      canvas.drawLine(Offset(size.width - paddingRight - markWidth, marky),
      Offset(size.width - paddingRight, marky), markPaint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return null;
  }
  
}

class SliderClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path rect = Path()
      ..addRect(Rect.fromLTWH(0.0, size.height/2, size.width, size.height/2));
    return rect;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }

}

class Points extends StatelessWidget {
  final int points;
  final bool isAboveSlider;
  final bool isPointsYouNeed;
  final Color color;

  Points({Key key, this.points, this.isAboveSlider, this.isPointsYouNeed, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final percent = points / 100;
    final pointTextSize = 30.0 + (70.0 * percent);
    return Row(
      crossAxisAlignment: isAboveSlider ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: <Widget>[
        FractionalTranslation(
          translation: Offset(0.0, isAboveSlider? 0.18:-0.18),
          child: Text('$points',
          style: TextStyle(
            color: color,
            fontSize: pointTextSize
          )),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("POINTS",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: color
              )),
              Text(isPointsYouNeed?"POINTS YOU NEED":"POINTS YOU HAVE",style: TextStyle(
                fontWeight: FontWeight.bold,
                color: color
              ))
            ],
          ),
        )
      ],
    );
  }
}