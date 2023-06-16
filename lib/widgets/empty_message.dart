import 'package:flutter/material.dart';
import '../res/text_styles.dart';

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
