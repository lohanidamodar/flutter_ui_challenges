import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/src/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  
  @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Flutter UIs'),
          elevation: 0,
        ),
        drawer: new DrawerMenu(),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Text("Welcome to flutter UI, here I plan to create most common mobile UI screens for learning purpose. Open drawer menu to view layouts."),
                Builder(
                  builder: (BuildContext context)=> RaisedButton(
                    child: Text('Open Drawer'),
                    onPressed: ()=>Scaffold.of(context).openDrawer(),
                  )
                )
              ]
            ),
          )
      ));
    }
}

