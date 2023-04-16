/**
 * Author: Mausam Rayamajhi
 * profile: https://github.com/mausamRayamajhi
  */

import 'package:flutter/material.dart';
import '../../util/constant.dart';
import '../../widget/login/custome_input.dart';

class LoginInputSection extends StatelessWidget {
  const LoginInputSection({super.key});

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Material(
      borderRadius: const BorderRadius.all(Radius.circular(10.0)),
      elevation: 3.0,
      child: Wrap(
        children: <Widget>[
          Container(
            //padding: EdgeInsets.symmetric(horizontal: 25.0),
            width: deviceSize.width * 0.9,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
            ),
            child: Column(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Column(
                    children: const <Widget>[
                      SizedBox(
                        height: 25.0,
                      ),
                      CustomInputField(
                        textHint: 'Mobile number',
                        keyboardType: TextInputType.number,
                        showInputText: false,
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      CustomInputField(
                        textHint: 'Password',
                        showInputText: true,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 3.0,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Checkbox(
                        value: false,
                        onChanged: (bool? value) {},
                      ),
                    ),
                    const Text(
                      'Remember mobile number',
                      style: TextStyle(
                        color: primaryColorLight,
                      ),
                    )
                  ],
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Column(
                    children: <Widget>[
                      MaterialButton(
                        color: primaryColorLight,
                        height: 50.0,
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacementNamed('/dashboard');
                        },
                        child: Row(
                          children: <Widget>[
                            SizedBox(width: deviceSize.width * 0.25),
                            const Text(
                              'Log in',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: deviceSize.width * 0.2),
                            Image.asset(
                              'assets/nicasiaassets/ic_fingerprint.png',
                              width: 40.0,
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const <Widget>[
                          Text(
                            'Reset Device',
                            style: TextStyle(
                              color: primaryColor,
                            ),
                          ),
                          Text(
                            'Activate Now',
                            style: TextStyle(
                              color: primaryColor,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 25.0,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
