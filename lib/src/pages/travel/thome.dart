import 'package:flutter/material.dart';

class TravelHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Hello Raj Kumar,", style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold
                      )),
                      Text("Where do you want to go?",style: TextStyle(
                        color: Colors.grey.shade700
                      ),)
                    ],
                  ),
                  CircleAvatar(backgroundImage: AssetImage('assets/img/7.jpg'), radius: 40,)
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 8.0),
              child: Material(
                elevation: 5.0,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Find destination",
                    prefixIcon: Icon(Icons.location_on),
                    border: InputBorder.none
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left:16.0, top: 8.0, right: 16.0, bottom: 16.0),
              child: Material(
                elevation: 5.0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5.0),
                      child: Image.asset('assets/travel/kathmandu1.jpg', fit: BoxFit.cover,)),
                    Positioned(
                      bottom: 20.0,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal:16.0,vertical: 8.0),
                        color: Colors.black.withOpacity(0.7),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text("Kathmandu", style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold
                            )),
                            Text("90 places worth to visit", style: TextStyle(
                              color: Colors.white
                            ))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left:16.0, top: 8.0, right: 16.0, bottom: 16.0),
              child: Material(
                elevation: 5.0,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5.0),
                      child: Image.asset('assets/travel/kathmandu1.jpg', fit: BoxFit.cover,)),
                    Positioned(
                      bottom: 20.0,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal:16.0,vertical: 8.0),
                        color: Colors.black.withOpacity(0.7),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Text("Pokhara", style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold
                            )),
                            Text("40 places worth to visit", style: TextStyle(
                              color: Colors.white
                            ))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0,vertical: 8.0),
              child: Material(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                elevation: 5.0,
                child: Container(
                  padding: EdgeInsets.all(16.0),
                  child: Text("Palpa", style: TextStyle(
                    fontSize: 20.0,
                  )),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0,vertical: 8.0),
              child: Material(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                elevation: 5.0,
                child: Container(
                  padding: EdgeInsets.all(16.0),
                  child: Text("Jomsom", style: TextStyle(
                    fontSize: 20.0,
                  )),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0,vertical: 8.0),
              child: Material(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                elevation: 5.0,
                child: Container(
                  padding: EdgeInsets.all(16.0),
                  child: Text("Namche", style: TextStyle(
                    fontSize: 20.0,
                  )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}