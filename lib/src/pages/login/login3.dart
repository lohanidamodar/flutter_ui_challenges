import 'package:flutter/material.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class LoginThreePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: 650,
            child: RotatedBox(
              quarterTurns: 2,
              child: WaveWidget(
                config: CustomConfig(
                    gradients: [
                        [Colors.deepPurple, Colors.deepPurple.shade200],
                        [Colors.indigo.shade200, Colors.purple.shade200],
                    ],
                    durations: [19440, 10800],
                    heightPercentages: [0.20, 0.25],
                    blur: MaskFilter.blur(BlurStyle.solid, 10),
                    gradientBegin: Alignment.bottomLeft,
                    gradientEnd: Alignment.topRight,
                ),
                waveAmplitude: 0,
                size: Size(
                    double.infinity,
                    double.infinity,
                ),
              ),
            ),
          ),
          ListView(
            children: <Widget>[
              Container(
                height: 400,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Login", textAlign: TextAlign.center, style: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                      fontSize: 28.0
                    )),
                    Card(
                      margin: EdgeInsets.only(left: 30, right:30, top:30),
                      elevation: 11,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(40))),
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person, color: Colors.black26,),
                          suffixIcon: Icon(Icons.check_circle, color: Colors.black26,),
                          hintText: "Username",
                          hintStyle: TextStyle(color: Colors.black26),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(Radius.circular(40.0)),
                          ),
                          contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0)
                        ),
                      ),
                    ),
                    Card(
                      margin: EdgeInsets.only(left: 30, right:30, top:20),
                      elevation: 11,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(40))),
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock, color: Colors.black26,),
                          hintText: "Password",
                          hintStyle: TextStyle(
                            color: Colors.black26,
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(Radius.circular(40.0)),
                          ),
                          contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0)
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(30.0),
                      child: RaisedButton(
                        padding: EdgeInsets.symmetric(vertical: 16.0),
                        color: Colors.pink,
                        onPressed: (){},
                        elevation: 11,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(40.0))),
                        child: Text("Login", style: TextStyle(
                          color: Colors.white70
                        )),
                      ),
                    ),
                    Text("Forgot your password?", style: TextStyle(
                      color: Colors.white
                    ))
                  ],
                ),
              ),
              SizedBox(height: 100,),
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text("or, connect with"),
                    SizedBox(height: 20.0,),
                    Row(
                      children: <Widget>[
                        SizedBox(width: 20.0,),
                        Expanded(
                          child: RaisedButton(
                            child: Text("Facebook"),
                            textColor: Colors.white,
                            color: Colors.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(40)),
                            ),
                            onPressed: (){},
                          ),
                        ),
                        SizedBox(width: 10.0,),
                        Expanded(
                          child: RaisedButton(
                            child: Text("Twitter"),
                            textColor: Colors.white,
                            color: Colors.indigo,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(40)),
                            ),
                            onPressed: (){},
                          ),
                        ),
                        SizedBox(width: 20.0,),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Dont have an account?"),
                        FlatButton(child: Text("Sign up"), textColor: Colors.indigo, onPressed: (){},)
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