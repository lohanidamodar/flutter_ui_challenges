/**
 * Author: Siddhartha Joshi
 * profile: https://github.com/cimplesid
  */
import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';

class Intro5 extends StatefulWidget {
  static const String path = "lib/src/pages/onboarding/intro5.dart";

  const Intro5({super.key});
  @override
  _Intro5State createState() => _Intro5State();
}

const brightYellow = Color(0xFFFFD300);
const darkYellow = Color(0xFFFFB900);

class _Intro5State extends State<Intro5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: brightYellow,
      body: Column(
        children: [
          const Flexible(
            flex: 8,
            child: FlareActor(
              'assets/flare/bus.flr',
              alignment: Alignment.center,
              fit: BoxFit.contain,
              animation: 'driving',
            ),
          ),
          Flexible(
            flex: 2,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: darkYellow,
                elevation: 4,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
              ),
              child: const Text(
                'Tap here to proceed',
                style: TextStyle(color: Colors.black54),
              ),
              onPressed: () => Navigator.pop(context),
            ),
          ),
        ],
      ),
    );
  }
}
