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
  
  double sliderPercent = 0.75;
  double startDragY;
  double startDragPercent;



  void _onPanStart(DragStartDetails details) {
    startDragY = details.globalPosition.dy;
    startDragPercent = sliderPercent;  
  }
  void _onPanUpdate(DragUpdateDetails details) {
    final dragDistance = startDragY - details.globalPosition.dy;
    final sliderHeight = context.size.height;
    final dragPercent = dragDistance / sliderHeight;
    setState(() {
          sliderPercent = startDragPercent + dragPercent;
        });
  }
  void _onPanEnd(DragEndDetails details) {
    setState(() {
          startDragPercent = null;
          startDragY = null;
        });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanStart: _onPanStart,
      onPanUpdate: _onPanUpdate,
      onPanEnd: _onPanEnd,
      child: Stack(
        children: <Widget>[
          SliderMarks(
            markCount: widget.markCount,
            color: widget.positiveColor,
            paddingTop: paddingTop,
            paddingBottom: paddingBottom,
            paddingRight: 20.0,
          ),
          ClipPath(
            clipper: SliderClipper(sliderPercent: sliderPercent, paddingTop: paddingTop, paddingBottom: paddingBottom),
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
      ),
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
    return true;
  }
  
}

class SliderClipper extends CustomClipper<Path> {
  final double sliderPercent, paddingTop, paddingBottom;

  SliderClipper({this.sliderPercent, this.paddingTop, this.paddingBottom});
  

  @override
  Path getClip(Size size) {
    final top = paddingTop;
    final bottom = size.height;
    final height = bottom - paddingBottom - top;
    final percentFromBottom = 1.0 - sliderPercent;

    Path rect = Path()
      ..addRect(Rect.fromLTRB(0.0, top + percentFromBottom * height, size.width, bottom));
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