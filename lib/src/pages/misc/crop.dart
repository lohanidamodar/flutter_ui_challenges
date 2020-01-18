/**
 * Author: Mahdi K. Fard
 * profile: https://github.com/xclud
 */
import 'dart:math';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:crop/crop.dart';

class CropPage extends StatefulWidget {
  static final String path = "lib/src/pages/misc/crop.dart";
  @override
  _CropPageState createState() => _CropPageState();
}

class _CropPageState extends State<CropPage> {
  final _cropKey = GlobalKey<CropState>();
  double _rotation = 0;

  void _cropImage() async {
    final cropped = await _cropKey.currentState.crop();
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: Text('Crop Result'),
            centerTitle: true,
          ),
          body: Center(
            child: RawImage(
              image: cropped,
            ),
          ),
        ),
        fullscreenDialog: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Crop Demo'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            onPressed: _cropImage,
            tooltip: 'Crop',
            icon: Icon(Icons.crop),
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Crop(
              key: _cropKey,
              child: Image.asset('assets/placeholder.jpg'),
              aspectRatio: 1920 / 1280.0,
            ),
          ),
          Row(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.undo),
                tooltip: 'Undo',
                onPressed: () {
                  _cropKey.currentState.rotation = 0;
                  _cropKey.currentState.scale = 1;
                  _cropKey.currentState.offset = Offset.zero;
                  setState(() {
                    _rotation = 0;
                  });
                },
              ),
              Expanded(
                child: SliderTheme(
                  data: theme.sliderTheme.copyWith(
                    trackShape: CenteredRectangularSliderTrackShape(),
                  ),
                  child: Slider(
                    divisions: 91,
                    value: _rotation,
                    min: -45,
                    max: 45,
                    label: '$_rotation°',
                    onChanged: (n) {
                      setState(() {
                        _rotation = n.roundToDouble();
                        _cropKey.currentState.rotation = _rotation;
                      });
                    },
                  ),
                ),
              ),
              IconButton(
                icon: Icon(Icons.aspect_ratio),
                tooltip: 'Aspect Ratio',
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CenteredRectangularSliderTrackShape extends RectangularSliderTrackShape {
  @override
  void paint(PaintingContext context, ui.Offset offset,
      {RenderBox parentBox,
      SliderThemeData sliderTheme,
      Animation<double> enableAnimation,
      ui.Offset thumbCenter,
      bool isEnabled: false,
      bool isDiscrete: false,
      ui.TextDirection textDirection}) {
    // If the slider track height is less than or equal to 0, then it makes no
    // difference whether the track is painted or not, therefore the painting
    // can be a no-op.
    if (sliderTheme.trackHeight <= 0) {
      return;
    }

    // Assign the track segment paints, which are left: active, right: inactive,
    // but reversed for right to left text.
    final ColorTween activeTrackColorTween = ColorTween(
        begin: sliderTheme.disabledActiveTrackColor,
        end: sliderTheme.activeTrackColor);
    final ColorTween inactiveTrackColorTween = ColorTween(
        begin: sliderTheme.disabledInactiveTrackColor,
        end: sliderTheme.inactiveTrackColor);
    final Paint activePaint = Paint()
      ..color = activeTrackColorTween.evaluate(enableAnimation);
    final Paint inactivePaint = Paint()
      ..color = inactiveTrackColorTween.evaluate(enableAnimation);

    final Rect trackRect = getPreferredRect(
      parentBox: parentBox,
      offset: offset,
      sliderTheme: sliderTheme,
      isEnabled: isEnabled,
      isDiscrete: isDiscrete,
    );
    final trackCenter = trackRect.center;
    final Size thumbSize =
        sliderTheme.thumbShape.getPreferredSize(isEnabled, isDiscrete);
    // final Rect leftTrackSegment = Rect.fromLTRB(
    //     trackRect.left + trackRect.height / 2,
    //     trackRect.top,
    //     thumbCenter.dx - thumbSize.width / 2,
    //     trackRect.bottom);
    // if (!leftTrackSegment.isEmpty)
    //   context.canvas.drawRect(leftTrackSegment, leftTrackPaint);
    // final Rect rightTrackSegment = Rect.fromLTRB(
    //     thumbCenter.dx + thumbSize.width / 2,
    //     trackRect.top,
    //     trackRect.right,
    //     trackRect.bottom);
    // if (!rightTrackSegment.isEmpty)
    //   context.canvas.drawRect(rightTrackSegment, rightTrackPaint);

    if (trackCenter.dx < thumbCenter.dx) {
      final Rect leftTrackSegment = Rect.fromLTRB(
          trackRect.left,
          trackRect.top,
          min(trackCenter.dx, thumbCenter.dx - thumbSize.width / 2),
          trackRect.bottom);
      if (!leftTrackSegment.isEmpty)
        context.canvas.drawRect(leftTrackSegment, inactivePaint);

      final activeRect = Rect.fromLTRB(
          trackCenter.dx, trackRect.top, thumbCenter.dx, trackRect.bottom);
      if (!activeRect.isEmpty) {
        context.canvas.drawRect(activeRect, activePaint);
      }

      final Rect rightTrackSegment = Rect.fromLTRB(
          thumbCenter.dx + thumbSize.width / 2,
          trackRect.top,
          trackRect.right,
          trackRect.bottom);
      if (!rightTrackSegment.isEmpty) {
        context.canvas.drawRect(rightTrackSegment, inactivePaint);
      }
    } else if (trackCenter.dx > thumbCenter.dx) {
      final Rect leftTrackSegment = Rect.fromLTRB(trackRect.left, trackRect.top,
          thumbCenter.dx + thumbSize.width / 2, trackRect.bottom);
      if (!leftTrackSegment.isEmpty) {
        context.canvas.drawRect(leftTrackSegment, inactivePaint);
      }

      final activeRect = Rect.fromLTRB(
          thumbCenter.dx, trackRect.top, trackCenter.dx, trackRect.bottom);
      if (!activeRect.isEmpty) {
        context.canvas.drawRect(activeRect, activePaint);
      }

      final Rect rightTrackSegment = Rect.fromLTRB(
          min(trackCenter.dx, thumbCenter.dx - thumbSize.width / 2),
          trackRect.top,
          trackRect.right,
          trackRect.bottom);
      if (!rightTrackSegment.isEmpty) {
        context.canvas.drawRect(rightTrackSegment, inactivePaint);
      }
    } else {
      final Rect leftTrackSegment = Rect.fromLTRB(
          trackRect.left,
          trackRect.top,
          min(trackCenter.dx, thumbCenter.dx - thumbSize.width / 2),
          trackRect.bottom);
      if (!leftTrackSegment.isEmpty) {
        context.canvas.drawRect(leftTrackSegment, inactivePaint);
      }

      final Rect rightTrackSegment = Rect.fromLTRB(
          min(trackCenter.dx, thumbCenter.dx - thumbSize.width / 2),
          trackRect.top,
          trackRect.right,
          trackRect.bottom);
      if (!rightTrackSegment.isEmpty) {
        context.canvas.drawRect(rightTrackSegment, inactivePaint);
      }
    }
  }
}
