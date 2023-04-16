/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */

import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/src/widgets/springy_slider/slider_controller.dart';
import 'package:flutter_ui_challenges/src/widgets/springy_slider/slider_state.dart';

class SliderPoints extends StatelessWidget {
  final SpringySliderController? sliderController;
  final double? paddingTop;
  final double? paddingBottom;

  const SliderPoints({super.key, 
    this.sliderController,
    this.paddingTop,
    this.paddingBottom,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        double? sliderPercent = sliderController!.sliderValue;
        if (sliderController!.state == SpringySliderState.dragging) {
          sliderPercent = sliderController!.draggingPercent!.clamp(0.0, 1.0);
        }

        final height = constraints.maxHeight - paddingTop! - paddingBottom!;
        final sliderY = height * (1.0 - sliderPercent!) + paddingTop!;
        final pointsYouNeedPercent = 1.0 - sliderPercent;
        final pointsYouNeed = (100 * pointsYouNeedPercent).round();
        final pointsYouHavePercent = sliderPercent;
        final pointsYouHave = 100 - pointsYouNeed;

        return Stack(
          children: <Widget>[
            Positioned(
              left: 30.0,
              top: sliderY - 10.0 - (40.0 * pointsYouNeedPercent),
              child: FractionalTranslation(
                translation: const Offset(0.0, -1.0),
                child: Points(
                  points: pointsYouNeed,
                  isAboveSlider: true,
                  isPointsYouNeed: true,
                  color: Colors.pink,
                ),
              ),
            ),
            Positioned(
              left: 30.0,
              top: sliderY + 10.0 + (40.0 * pointsYouHavePercent),
              child: Points(
                points: pointsYouHave,
                isAboveSlider: false,
                isPointsYouNeed: false,
                color: Theme.of(context).scaffoldBackgroundColor,
              ),
            ),
          ],
        );
      },
    );
  }
}

class Points extends StatelessWidget {
  final int? points;
  final bool isAboveSlider;
  final bool isPointsYouNeed;
  final Color? color;

  const Points({super.key, 
    this.points,
    this.isAboveSlider = true,
    this.isPointsYouNeed = true,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    final percent = points! / 100.0;
    final pointTextSize = 50.0 + (50.0 * percent);

    return Row(
      crossAxisAlignment:
          isAboveSlider ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: <Widget>[
        FractionalTranslation(
          translation: Offset(-0.05 * percent, isAboveSlider ? 0.18 : -0.18),
          child: Text(
            '$points',
            style: TextStyle(
              fontSize: pointTextSize,
              color: color,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 4.0),
                child: Text(
                  'POINTS',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: color,
                  ),
                ),
              ),
              Text(
                isPointsYouNeed ? 'YOU NEED' : 'YOU HAVE',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: color,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
