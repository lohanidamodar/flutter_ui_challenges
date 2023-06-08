/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */
import 'package:flutter/material.dart';

class BottomBarController extends ChangeNotifier {
  final bool snap;
  final double? dragLength;

  BottomBarController({
    required TickerProvider vsync,
    this.snap = true,
    this.dragLength,
  })  : _animationController = AnimationController(vsync: vsync),
        assert(dragLength == null || dragLength > 0);

  @Deprecated("use state instead. Will be removed soon")
  Animation<double> get animation => _animationController.view;

  Animation<double> get state => _animationController.view;

  final AnimationController _animationController;

  void onDrag(DragUpdateDetails details) {
    if (dragLength == null) return;
    _animationController.value -= details.primaryDelta! / dragLength!;
  }

  void onDragEnd(DragEndDetails details) {
    if (dragLength == null) return;
    double minFlingVelocity = 365.0;

    //let the current animation finish before starting a new one
    if (_animationController.isAnimating) return;

    //check if the velocity is sufficient to constitute fling
    if (details.velocity.pixelsPerSecond.dy.abs() >= minFlingVelocity) {
      double visualVelocity =
          -details.velocity.pixelsPerSecond.dy / dragLength!;

      if (snap) {
        _animationController.fling(velocity: visualVelocity);
      } else {
        // actual scroll physics will be implemented in a future release
        _animationController.animateTo(
          _animationController.value + visualVelocity * 0.16,
          duration: const Duration(milliseconds: 410),
          curve: Curves.decelerate,
        );
      }
      return;
    }

    // check if the controller is already halfway there
    if (snap) {
      if (_animationController.value > 0.5) {
        open();
      } else {
        close();
      }
    }
  }

  //close the panel
  void close() {
    _animationController.fling(velocity: -1.0);
  }

  void swap() {
    if (_animationController.value == 1) {
      close();
    } else if (_animationController.value == 0) {
      open();
    }
  }

  //open the panel
  void open() {
    _animationController.fling(velocity: 1.0);
  }

  bool isOpen() {
    return _animationController.value == 1;
  }
}

class DefaultBottomBarController extends StatefulWidget {
  final Widget child;

  const DefaultBottomBarController({
    Key? key,
    required this.child,
  }) : super(key: key);

  static BottomBarController? of(BuildContext context) {
    final _BottomBarControllerScope? scope = context
        .dependOnInheritedWidgetOfExactType(aspect: _BottomBarControllerScope);
    return scope?.controller;
  }

  @override
  _DefaultBottomBarControllerState createState() =>
      _DefaultBottomBarControllerState();
}

class _DefaultBottomBarControllerState extends State<DefaultBottomBarController>
    with SingleTickerProviderStateMixin {
  BottomBarController? _controller;

  @override
  void initState() {
    super.initState();
    _controller = BottomBarController(vsync: this);
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _BottomBarControllerScope(
      controller: _controller,
      enabled: TickerMode.of(context),
      child: widget.child,
    );
  }
}

class _BottomBarControllerScope extends InheritedWidget {
  const _BottomBarControllerScope({
    Key? key,
    this.controller,
    this.enabled,
    required Widget child,
  }) : super(key: key, child: child);

  final BottomBarController? controller;
  final bool? enabled;

  @override
  bool updateShouldNotify(_BottomBarControllerScope old) {
    return enabled != old.enabled || controller != old.controller;
  }
}
