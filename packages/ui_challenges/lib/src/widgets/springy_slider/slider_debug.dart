/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */

import 'package:flutter/material.dart';

class SliderDebug extends StatelessWidget {
  final double? sliderPercent;
  final double? paddingTop;
  final double? paddingBottom;

  const SliderDebug({super.key, 
    this.sliderPercent,
    this.paddingTop,
    this.paddingBottom,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final height = constraints.maxHeight - paddingTop! - paddingBottom!;

        return Stack(
          children: <Widget>[
            Positioned(
              left: 0.0,
              right: 0.0,
              top: height * (1.0 - sliderPercent!) + paddingTop!,
              child: Container(
                height: 2.0,
                color: Colors.black,
              ),
            )
          ],
        );
      },
    );
  }
}
