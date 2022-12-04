import 'package:flutter_ui_challenges/core/presentation/res/text_styles.dart';
import 'package:flutter/material.dart';

class EmptyMessage extends StatelessWidget {
  final String message;
  const EmptyMessage({
    this.message = "",
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            message,
            style: shadedTitle,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
