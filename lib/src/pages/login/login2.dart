import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/src/graphics/background_clipper_one.dart';

class LoginTwoPage extends StatelessWidget {

  Widget _buildPageContent() {
    return Container(
      color: Colors.blue.shade100,
      child: ListView(
        children: <Widget>[
          SizedBox(height: 30.0,),
          CircleAvatar(child: Image.asset('assets/img/rocket.png'), maxRadius: 50, backgroundColor: Colors.transparent,),
          SizedBox(height: 20.0,),
          Container(
            padding: EdgeInsets.all(20.0),
            child: Stack(
              children: <Widget>[
                Container(
                  height: 400,
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(40.0)),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: 90.0,),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: TextField(
                          style: TextStyle(color: Colors.blue),
                          decoration: InputDecoration(
                            hintText: "Email address",
                            hintStyle: TextStyle(color: Colors.blue.shade200),
                            border: InputBorder.none,
                            icon: Icon(Icons.lock, color: Colors.blue,)
                          ),
                        )
                      ),
                      Container(child: Divider(color: Colors.blue.shade400,), padding: EdgeInsets.only(left: 20.0,right: 20.0, bottom: 10.0),),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: TextField(
                          style: TextStyle(color: Colors.blue),
                          decoration: InputDecoration(
                            hintText: "Password",
                            hintStyle: TextStyle(color: Colors.blue.shade200),
                            border: InputBorder.none,
                            icon: Icon(Icons.lock, color: Colors.blue,)
                          ),
                        )
                      ),
                      Container(child: Divider(color: Colors.blue.shade400,), padding: EdgeInsets.only(left: 20.0,right: 20.0, bottom: 10.0),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Container(padding: EdgeInsets.only(right: 20.0),
                            child: Text("Forget Password",
                              style: TextStyle(color: Colors.black45),
                            )
                          )
                        ],
                      ),
                      SizedBox(height: 10.0,),
                      
                    ],
                  ),
                ),
                ClipPath(
                  clipper: BackgroundClipperOne(),
                  child: Container(
                    height: 120,
                    color: Colors.blue.shade100,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      radius: 40.0,
                      child: Icon(Icons.person),
                    ),
                  ],
                ),
                Container(
                  height: 420,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: RaisedButton(
                      onPressed: (){},
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
                      child: Text("Login", style: TextStyle(color: Colors.white70)),
                      color: Colors.blue,
                    ),
                  ),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                onPressed: (){},
                child: Text("Sign Up", style: TextStyle(color: Colors.blue, fontSize: 18.0)),
              )
            ],
          )
        ],
      ),
    );
  }

  @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: _buildPageContent(),
      );
    }
}