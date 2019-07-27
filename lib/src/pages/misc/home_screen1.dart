
/**
 * Author: Sudip Thapa  
 * profile: https://github.com/sudeepthapa
  */

import 'package:flutter/material.dart';

class HomeScreen1 extends StatelessWidget {
  const HomeScreen1({Key key}) : super(key: key);
  static final String path = "lib/src/pages/misc/home_screen1.dart";

  Widget cards(image, title, price) {
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 6.0,
          ),
        ],
        color: Colors.white,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              image,
              height: 80,
            ),
            SizedBox(
              height: 5,
            ),
            Text(title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            Container(
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.only(top: 4),
                color: Colors.deepOrange,
                child: Text("\$ " + price,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 12))),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 1,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today),
              title: Text("Today's Special"),
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.fastfood,
                  color: Colors.deepOrange,
                ),
                title: Text(
                  "Foods",
                  style: TextStyle(color: Colors.deepOrange),
                )),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), title: Text("Settings")),
          ],
        ),
        backgroundColor: Colors.white70.withOpacity(0.9),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      height: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(30)),
                        color: Colors.orangeAccent.shade700,
                      ),
                      width: double.infinity,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 90, bottom: 20),
                      width: 299,
                      height: 279,
                      decoration: BoxDecoration(
                          color: Colors.orangeAccent.shade400,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(160),
                              bottomLeft: Radius.circular(290),
                              bottomRight: Radius.circular(160),
                              topRight: Radius.circular(10))),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(26.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Good Morning",
                              style: TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white)),
                          Text("Everyone",
                              style: TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white)),
                          SizedBox(
                            height: 40,
                          ),
                          Material(
                            elevation: 5.0,
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            child: TextField(
                              controller:
                                  TextEditingController(text: 'Search...'),
                              cursorColor: Theme.of(context).primaryColor,
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                              decoration: InputDecoration(
                                  suffixIcon: Material(
                                    elevation: 2.0,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30)),
                                    child: Icon(Icons.search),
                                  ),
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 25, vertical: 13)),
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: 330,
                            margin: EdgeInsets.only(top: 30),
                            child: GridView.count(
                              crossAxisCount: 2,
                              mainAxisSpacing: 10,
                              crossAxisSpacing: 10,
                              children: <Widget>[
                                cards('assets/grocery/brocoli.png', 'Brocoli',
                                    '30'),
                                cards('assets/grocery/cabbage.png', 'Cabbage',
                                    '37'),
                                cards(
                                    'assets/grocery/mango.png', 'Mango', '22'),
                                cards('assets/grocery/pineapple.png',
                                    'Pineapple', '90'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
