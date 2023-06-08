/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */

import 'package:flutter/material.dart';

class LoaderOne extends StatefulWidget {
  final Color? color;

  const LoaderOne({Key? key, this.color}) : super(key: key);
  @override
  _LoaderOneState createState() => _LoaderOneState();
}

class _LoaderOneState extends State<LoaderOne>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1200));
    animation = CurvedAnimation(parent: controller, curve: Curves.elasticOut);
    animation.addListener(() {
      setState(() {});
    });

    animation.addStatusListener((AnimationStatus status) {});
    controller.repeat();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            color: widget.color,
            height: 3.0,
            width: animation.value * 75.0,
          ),
          const SizedBox(
            height: 5.0,
          ),
          Container(
            color: widget.color,
            height: 3.0,
            width: animation.value * 50.0,
          ),
          const SizedBox(
            height: 5.0,
          ),
          Container(
            color: widget.color,
            height: 3.0,
            width: animation.value * 35.0,
          ),
        ],
      ),
    );
  }
}
