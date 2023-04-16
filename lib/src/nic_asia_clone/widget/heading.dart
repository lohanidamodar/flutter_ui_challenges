import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  final String? title;
  const Heading({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Image.asset(
          'assets/nicasiaassets/fill_1_copy.png',
          height: 20.0,
        ),
        const SizedBox(
          width: 15.0,
        ),
        Expanded(
          child: Text(
            title!.toUpperCase(),
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: 18.0,
            ),
          ),
        )
      ],
    );
  }
}
