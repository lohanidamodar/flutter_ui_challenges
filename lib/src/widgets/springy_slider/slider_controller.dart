/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */

import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_ui_challenges/src/widgets/springy_slider/slider_state.dart';

class SpringySliderController extends ChangeNotifier {
  final SpringDescription sliderSpring = const SpringDescription(
    mass: 1.0,
    stiffness: 1000.0,
    damping: 30.0,
  );

  final SpringDescription crestSpring = const SpringDescription(
    mass: 1.0,
    stiffness: 5.0,
    damping: 0.5,
  );

  final TickerProvider? _vsync;

  SpringySliderState _state = SpringySliderState.idle;

  // Stable slider value.
  double? _sliderPercent;

  // Slider value during user drag.
  double? _draggingPercent;

  // Slider horizontal value during user drag.
  double? _draggingHorizontalPercent;

  // When springing to new slider value, this is where the UI is springing from.
  double? _springStartPercent;
  // When springing to new slider value, this is where the UI is springing to.
  double? _springEndPercent;
  // Current slider value during spring effect.
  double? _springingPercent;
  // Physics spring.
  late SpringSimulation _sliderSpringSimulation;

  double? _crestSpringingPercent;
  double? _crestSpringingStartPercent;
  double? _crestSpringingEndPercent;
  late SpringSimulation _crestSpringSimulation;

  // Ticker that computes current spring position based on time.
  Ticker? _springTicker;
  // Elapsed time that has passed since the start of the spring.
  late double _springTime;

  SpringySliderController({
    double sliderPercent = 0.0,
    vsync,
  })  : _vsync = vsync,
        _sliderPercent = sliderPercent;

  @override
  void dispose() {
    if (_springTicker != null) {
      _springTicker!.dispose();
    }

    super.dispose();
  }

  SpringySliderState get state => _state;

  double? get sliderValue => _sliderPercent;

  set sliderValue(double? newValue) {
    _sliderPercent = newValue;
    notifyListeners();
  }

  double? get draggingPercent => _draggingPercent;

  double? get draggingHorizontalPercent => _draggingHorizontalPercent;

  set draggingPercents(Offset draggingPercents) {
    _draggingHorizontalPercent = draggingPercents.dx;
    _draggingPercent = draggingPercents.dy;
    notifyListeners();
  }

  void onDragStart(double draggingHorizontalPercent) {
    if (_springTicker != null) {
      _springTicker!
        ..stop()
        ..dispose();
    }

    _state = SpringySliderState.dragging;
    _draggingPercent = _sliderPercent;
    _draggingHorizontalPercent = draggingHorizontalPercent;

    notifyListeners();
  }

  void onDragEnd() {
    _state = SpringySliderState.springing;

    _springingPercent = _sliderPercent;
    _springStartPercent = _sliderPercent;
    _springEndPercent = _draggingPercent!.clamp(0.0, 1.0);

    _crestSpringingPercent = draggingPercent;
    _crestSpringingStartPercent = draggingPercent;
    _crestSpringingEndPercent = _springStartPercent;

    _draggingPercent = null;

    _sliderPercent = _springEndPercent;

    _startSpringing();

    notifyListeners();
  }

  void _startSpringing() {
    if (_springStartPercent == _springEndPercent) {
      _state = SpringySliderState.idle;
      notifyListeners();
      return;
    }

    _sliderSpringSimulation = SpringSimulation(
      sliderSpring,
      _springStartPercent!,
      _springEndPercent!,
      0.0,
    );

    final crestSpringNormal =
        (_crestSpringingEndPercent! - _crestSpringingStartPercent!) /
            (_crestSpringingEndPercent! - _crestSpringingStartPercent!).abs();
    _crestSpringSimulation = SpringSimulation(
      crestSpring,
      _crestSpringingStartPercent!,
      _crestSpringingEndPercent!,
      0.5 * crestSpringNormal,
    );

    _springTime = 0.0;

    _springTicker = _vsync!.createTicker(_springTick)..start();

    notifyListeners();
  }

  void _springTick(Duration deltaTime) {
    final lastFrameTime = deltaTime.inMilliseconds.toDouble() / 1000.0;

    _springTime += lastFrameTime;
    _springingPercent = _sliderSpringSimulation.x(_springTime);

    _crestSpringingPercent = _crestSpringSimulation.x(lastFrameTime);
    _crestSpringSimulation = SpringSimulation(
      crestSpring,
      _crestSpringingPercent!,
      _springingPercent!,
      _crestSpringSimulation.dx(lastFrameTime),
    );

    if (_sliderSpringSimulation.isDone(_springTime) &&
        _crestSpringSimulation.isDone(lastFrameTime)) {
      _springTicker!
        ..stop()
        ..dispose();
      _springTicker = null;

      _state = SpringySliderState.idle;
    }

    notifyListeners();
  }

  double? get springingPercent => _springingPercent;

  double? get crestSpringingPercent => _crestSpringingPercent;
}
