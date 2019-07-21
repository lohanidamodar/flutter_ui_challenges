/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */
  
import 'package:flutter/material.dart';

class HiddenMenuPage extends StatefulWidget {
  static final String path = "lib/src/pages/navigation/hiddenmenu.dart";
  _HiddenMenuPageState createState() => _HiddenMenuPageState();
}

class _HiddenMenuPageState extends State<HiddenMenuPage> with TickerProviderStateMixin {
  bool menuShown = false;
  double appbarHeight = 80.0;
  double menuHeight = 0.0;
  Animation<double> openAnimation, closeAnimation;
  AnimationController openController, closeController;

  void initState() { 
    super.initState();
    openController = AnimationController(
      duration: const Duration(milliseconds: 200), vsync: this);
    closeController = AnimationController(
      duration: const Duration(milliseconds: 200), vsync: this);
    openAnimation = Tween(begin: 0.0, end: 1.0).animate(openController)
      ..addListener(() {
        setState(() {
          menuHeight = openAnimation.value;
        });
      });
    closeAnimation = Tween(begin: 1.0, end: 0.0).animate(closeController)
      ..addListener((){
        setState((){
          menuHeight = closeAnimation.value;
        });
      });
  }

  _handleMenuPress() {
    setState(() {
          openController.reset();
          closeController.reset();
          menuShown = !menuShown;
          menuShown ? openController.forward() : closeController.forward();
        });
  }

  @override
    void dispose() {
      openController.dispose();
      closeController.dispose();
      super.dispose();
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Container(
              color: Colors.pink,
              height: menuHeight,
              child: Column(
                children: <Widget>[
                  SizedBox(height: 10.0,),
                  Row(
                    children: <Widget>[
                      IconButton(icon: Icon( menuShown ? Icons.cancel : Icons.menu), color: Colors.white,onPressed: _handleMenuPress,),
                      Text(menuShown ? "Menu" :"Home", style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 18.0
                      ))
                    ],
                  ),
                  SizedBox(height: 40.0,),
                  Expanded(
                    child: ListView(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(bottom: 10.0),
                          alignment: Alignment.center,
                          child: Text("Home", style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 18.0,
                          ))
                        ),
                        Container(
                          padding: EdgeInsets.only(bottom: 10.0),
                          alignment: Alignment.center,
                          child: Text("Cart", style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 18.0,
                          ))
                        ),
                        Container(
                          padding: EdgeInsets.only(bottom: 10.0),
                          alignment: Alignment.center,
                          child: Text("Wishlist", style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 18.0,
                          ))
                        ),
                        Container(
                          padding: EdgeInsets.only(bottom: 10.0),
                          alignment: Alignment.center,
                          child: Text("Profile", style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 18.0,
                          ))
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            LayoutBuilder(
              builder: (context, constraints) {
                return Container(
                  margin: EdgeInsets.only(top: menuHeight * (constraints.maxHeight - 60) + 60),
                  color: Colors.transparent,
                  child: Material(
                    elevation: 16.0,
                    shape: BeveledRectangleBorder(
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(46.0)),
                    ),
                    child: ListView.builder(
                      padding: EdgeInsets.only(top: 60.0),
                      itemBuilder: (_,int index){
                        return ListTile(
                          leading: CircleAvatar(
                            child: Text(index.toString()),
                          ),
                          title: Text("List item $index"),
                        );
                      },
                      itemCount: 100,
                    ),
                  ),
                );
              },
            )
            
          ],
        ),
      ),
       
    );
  }
}