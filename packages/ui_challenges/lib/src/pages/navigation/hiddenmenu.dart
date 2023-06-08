/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */

import 'package:flutter/material.dart';

class HiddenMenuPage extends StatefulWidget {
  static const String path = "lib/src/pages/navigation/hiddenmenu.dart";

  const HiddenMenuPage({super.key});
  @override
  _HiddenMenuPageState createState() => _HiddenMenuPageState();
}

class _HiddenMenuPageState extends State<HiddenMenuPage>
    with TickerProviderStateMixin {
  bool menuShown = false;
  double appbarHeight = 80.0;
  double menuHeight = 0.0;
  late Animation<double> openAnimation, closeAnimation;
  late AnimationController openController, closeController;

  @override
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
      ..addListener(() {
        setState(() {
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
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(menuShown ? Icons.cancel : Icons.menu),
                        color: Colors.white,
                        onPressed: _handleMenuPress,
                      ),
                      Text(menuShown ? "Menu" : "Home",
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 18.0))
                    ],
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  Expanded(
                    child: ListView(
                      children: <Widget>[
                        Container(
                            padding: const EdgeInsets.only(bottom: 10.0),
                            alignment: Alignment.center,
                            child: const Text("Home",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18.0,
                                ))),
                        Container(
                            padding: const EdgeInsets.only(bottom: 10.0),
                            alignment: Alignment.center,
                            child: const Text("Cart",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18.0,
                                ))),
                        Container(
                            padding: const EdgeInsets.only(bottom: 10.0),
                            alignment: Alignment.center,
                            child: const Text("Wishlist",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18.0,
                                ))),
                        Container(
                            padding: const EdgeInsets.only(bottom: 10.0),
                            alignment: Alignment.center,
                            child: const Text("Profile",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18.0,
                                ))),
                      ],
                    ),
                  )
                ],
              ),
            ),
            LayoutBuilder(
              builder: (context, constraints) {
                return Container(
                  margin: EdgeInsets.only(
                      top: menuHeight * (constraints.maxHeight - 60) + 60),
                  color: Colors.transparent,
                  child: Material(
                    elevation: 16.0,
                    shape: const BeveledRectangleBorder(
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(46.0)),
                    ),
                    child: ListView.builder(
                      padding: const EdgeInsets.only(top: 60.0),
                      itemBuilder: (_, int index) {
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
