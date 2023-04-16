/**
 * Author: Ambika Dulal
 * profile: https://github.com/ambikadulal
  */

import 'package:flutter/material.dart';

Color orangeColors = const Color(0xffF5591F);
Color orangeLightColors = const Color(0xffF2861E);

class LoginPageFourteen extends StatefulWidget {
  static const String path = "lib/src/pages/login/login14.dart";

  const LoginPageFourteen({super.key});
  @override
  _LoginPageFourteenState createState() => _LoginPageFourteenState();
}

class _LoginPageFourteenState extends State<LoginPageFourteen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(bottom: 30),
        child: Column(
          children: <Widget>[
            const HeaderContainer(),
            Expanded(
              flex: 1,
              child: Container(
                margin: const EdgeInsets.only(left: 20, right: 20, top: 30),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    _textInput(hint: "Enter your Email", icon: Icons.email),
                    _textInput(hint: "Password", icon: Icons.vpn_key),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      alignment: Alignment.centerRight,
                      child: const Text(
                        "Forgot Password?",
                      ),
                    ),
                    const Spacer(),
                    RichText(
                      text: TextSpan(children: [
                        const TextSpan(
                            text: "Don't have an account ? ",
                            style: TextStyle(color: Colors.black)),
                        TextSpan(
                            text: "Signup",
                            style: TextStyle(color: orangeColors)),
                      ]),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _textInput({controller, hint, icon}) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.white,
      ),
      padding: const EdgeInsets.only(left: 10),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
          prefixIcon: Icon(icon),
        ),
      ),
    );
  }
}

class HeaderContainer extends StatelessWidget {
  const HeaderContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [orangeColors, orangeLightColors],
              end: Alignment.bottomCenter,
              begin: Alignment.topCenter),
          borderRadius:
              const BorderRadius.only(bottomLeft: Radius.circular(100))),
      child: Stack(
        children: <Widget>[
          const Positioned(
              bottom: 20,
              right: 20,
              child: Text(
                "Login",
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
          Center(
            child: Image.asset(
              "assets/icon/app-store-logo.jpg",
              height: 100,
              width: 100,
            ),
          ),
        ],
      ),
    );
  }
}
