/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */

import 'package:flutter/material.dart';

class LoginThreePage extends StatelessWidget {
  static final String path = "lib/src/pages/login/login3.dart";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: 650,
            color: Colors.pink,
          ),
          ListView(
            children: <Widget>[
              Container(
                height: 400,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Login",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white70,
                            fontWeight: FontWeight.bold,
                            fontSize: 28.0)),
                    Card(
                      margin: EdgeInsets.only(left: 30, right: 30, top: 30),
                      elevation: 11,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40))),
                      child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.person,
                              color: Colors.black26,
                            ),
                            suffixIcon: Icon(
                              Icons.check_circle,
                              color: Colors.black26,
                            ),
                            hintText: "Username",
                            hintStyle: TextStyle(color: Colors.black26),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40.0)),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 16.0)),
                      ),
                    ),
                    Card(
                      margin: EdgeInsets.only(left: 30, right: 30, top: 20),
                      elevation: 11,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40))),
                      child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Colors.black26,
                            ),
                            hintText: "Password",
                            hintStyle: TextStyle(
                              color: Colors.black26,
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40.0)),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 16.0)),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(30.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 16.0),
                          backgroundColor: Colors.pink,
                          elevation: 11,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(40.0))),
                        ),
                        onPressed: () {},
                        child: Text("Login",
                            style: TextStyle(color: Colors.white70)),
                      ),
                    ),
                    Text("Forgot your password?",
                        style: TextStyle(color: Colors.white))
                  ],
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text("or, connect with"),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      children: <Widget>[
                        SizedBox(
                          width: 20.0,
                        ),
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: Colors.blue,
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(40)),
                              ),
                            ),
                            child: Text("Facebook"),
                            onPressed: () {},
                          ),
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: Colors.indigo,
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(40)),
                              ),
                            ),
                            child: Text("Twitter"),
                            onPressed: () {},
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Dont have an account?"),
                        TextButton(
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.indigo,
                          ),
                          child: Text("Sign up"),
                          onPressed: () {},
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
