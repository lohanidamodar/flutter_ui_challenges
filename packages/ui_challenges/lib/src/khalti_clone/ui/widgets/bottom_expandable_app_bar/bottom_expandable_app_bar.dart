/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */
import './controller.dart';
import 'package:flutter/material.dart';

enum Side { top, bottom }

class BottomExpandableAppBar extends StatefulWidget {
  final Widget? expandedBody;
  final double expandedHeight;
  final Widget? bottomAppBarBody;
  final BottomBarController? controller;
  final Side attachSide;

  final double appBarHeight;
  final bool useMax;

  final BoxConstraints? constraints;

  final NotchedShape? shape;
  final Color? expandedBackColor;
  final Color? bottomAppBarColor;
  final double horizontalMargin;
  final double bottomOffset;

  final Decoration? expandedDecoration;
  final Decoration? appBarDecoration;

  const BottomExpandableAppBar({
    Key? key,
    this.expandedBody,
    this.horizontalMargin = 16,
    this.bottomOffset = 10,
    this.shape,
    this.expandedHeight = 150,
    this.appBarHeight = 50,
    this.attachSide = Side.bottom,
    this.constraints,
    this.bottomAppBarColor,
    this.appBarDecoration,
    this.bottomAppBarBody,
    this.expandedBackColor,
    this.expandedDecoration,
    this.controller,
    this.useMax = false,
  })  : assert(!(expandedBackColor != null && expandedDecoration != null)),
        super(key: key);

  @override
  _BottomExpandableAppBarState createState() => _BottomExpandableAppBarState();
}

class _BottomExpandableAppBarState extends State<BottomExpandableAppBar> {
  BottomBarController? _controller;
  double? panelState;

  void _handleBottomBarControllerAnimationTick() {
    if (_controller!.state.value == panelState) return;
    panelState = _controller!.state.value;
    setState(() {});
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _updateBarController();
    panelState = _controller?.state.value ?? panelState;
  }

  @override
  void didUpdateWidget(BottomExpandableAppBar oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.controller != oldWidget.controller) _updateBarController();
  }

  @override
  void dispose() {
    if (_controller != null) {
      _controller!.state
          .removeListener(_handleBottomBarControllerAnimationTick);
    }
    // We don't own the _controller Animation, so it's not disposed here.
    super.dispose();
  }

  void _updateBarController() {
    final BottomBarController? newController =
        widget.controller ?? DefaultBottomBarController.of(context);
    assert(() {
      if (newController == null) {
        throw FlutterError('No BottomBarController for ${widget.runtimeType}.\n'
            'When creating a ${widget.runtimeType}, you must either provide an explicit '
            'BottomBarController using the "controller" property, or you must ensure that there '
            'is a DefaultBottomBarController above the ${widget.runtimeType}.\n'
            'In this case, there was neither an explicit controller nor a default controller.');
      }
      return true;
    }());

    if (newController == _controller) return;

    if (_controller != null) {
      _controller!.state
          .removeListener(_handleBottomBarControllerAnimationTick);
    }
    _controller = newController;
    if (_controller != null) {
      _controller!.state.addListener(_handleBottomBarControllerAnimationTick);
    }
  }

  @override
  Widget build(BuildContext context) {
    final finalHeight = (widget.useMax && widget.constraints != null)
        ? widget.constraints!.biggest.height
        : widget.expandedHeight;

    return BottomAppBar(
      color: Colors.transparent,
      elevation: 0,
      child: Stack(
        alignment: widget.attachSide == Side.bottom
            ? Alignment.bottomCenter
            : Alignment.topCenter,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: widget.horizontalMargin),
            child: Stack(
              children: [
                Container(
                  height: panelState! * finalHeight +
                      widget.appBarHeight +
                      widget.bottomOffset,
                  decoration: widget.expandedDecoration ??
                      BoxDecoration(
                        color: widget.expandedBackColor ??
                            Theme.of(context).colorScheme.background,
                        borderRadius: BorderRadius.circular(25),
                      ),
                  child: Opacity(
                      opacity: panelState! > 0.25 ? 1 : panelState! * 4,
                      child: widget.expandedBody),
                ),
              ],
            ),
          ),
          Container(
            color: widget.bottomAppBarColor ??
                Theme.of(context).bottomAppBarTheme.color,
            height: widget.appBarHeight,
            child: widget.bottomAppBarBody,
          ),
        ],
      ),
    );
  }
}
