import 'package:flutter/material.dart';

/**
 * Author: Aparna Dulal
 * profile: https://github.com/ambikadulal
 */


class DashboardFourPage extends StatefulWidget {
    static final String path = "lib/src/pages/dashboard/dash4.dart";
  @override
  _DashboardFourPageState createState() => _DashboardFourPageState();
}

class _DashboardFourPageState extends State<DashboardFourPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(Icons.menu, color: Colors.white,size: 52.0,),
                 Image.network('https://cdn.pixabay.com/photo/2015/06/12/21/58/child-807547_960_720.jpg',height: 80,width: 80,),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                "Welcome to Flutter UI Challenges \n here we have latest ui designs for you",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold
                ),
                textAlign: TextAlign.start,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: 
                Column(
                  children: [
                    Center(
                        child: Wrap(
                          spacing:20,
                          runSpacing: 20.0,
                          children: <Widget>[
                            SizedBox(
                              width:150.0,
                              height: 150.0,
                              child: Card(
                                color: Colors.black,
                                elevation: 1.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0)
                                ),
                                child:Center(

                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                    children: <Widget>[
                                     Image.network('https://cdn.pixabay.com/photo/2017/10/14/09/56/journal-2850091__340.jpg',height: 60,width: 50,),
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      Text(
                                        "Todo List",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.0
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      Text(
                                        "2 Items",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w100
                                        ),
                                      )
                                    ],
                                    ),
                                  )
                                ),
                              ),
                            ),
                            
                            SizedBox(
                              width:150.0,
                              height: 150.0,
                              child: Card(

                                color: Color.fromARGB(255,21, 21, 21),
                                elevation: 2.0,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0)
                                ),
                                child:Row(
                                  children: [
                                    Center(
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            children: <Widget>[
                                              Image.network('https://cdn.pixabay.com/photo/2013/07/12/12/30/cogwheel-145804_960_720.png',height: 50,width: 50,),
                                              SizedBox(
                                                height: 10.0,
                                              ),
                                              Text(
                                                "Settings",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20.0
                                                ),
                                              ),
                                              SizedBox(
                                                height: 5.0,
                                              ),
                                              Text(
                                                "6 Items",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w100
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                SizedBox(
                          width:150.0,
                          height: 150.0,
                          child: Card(
                            color: Color.fromARGB(255,21, 21, 21),
                            elevation: 2.0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)
                            ),
                            child:Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: <Widget>[
                                      Image.network('https://cdn.pixabay.com/photo/2015/09/05/07/28/writing-923882_960_720.jpg',width: 50,height: 50,),
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      Text(
                                        "Notes",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20.0
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      Text(
                                        "12 Items",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w100
                                        ),
                                      )
                                    ],
                                  ),
                                )
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                SizedBox(
                                  width:150.0,
                                  height: 150.0,
                                  child: Card(

                                    color: Color.fromARGB(255,21, 21, 21),
                                    elevation: 2.0,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8.0)
                                    ),
                                    child:Center(
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            children: <Widget>[
                                              Image.network('https://cdn.pixabay.com/photo/2017/01/11/08/02/winter-1971080_960_720.jpg',height: 50,width: 50,),
                                              SizedBox(
                                                height: 10.0,
                                              ),
                                              Text(
                                                "Agenda",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20.0
                                                ),
                                              ),
                                              SizedBox(
                                                height: 5.0,
                                              ),
                                              Text(
                                                "4 Items",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w100
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                    ),
                                  ),
                      
                                ), 
                              Row(
                                
                                children: [
                                  SizedBox(
                                      width:150.0,
                                      height: 150.0,
                                      child: Card(

                                        color: Color.fromARGB(255,21, 21, 21),
                                        elevation: 2.0,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(8.0)
                                        ),
                                        child:Center(
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Column(
                                                children: <Widget>[
                                                  Image.network('https://cdn.pixabay.com/photo/2013/11/19/09/35/glasses-213156__340.jpg',height: 50,width: 50,),
                                                  SizedBox(
                                                    height: 8.0,
                                                  ),
                                                  Text(
                                                    "Happy days",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 20.0
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 4.0,
                                                  ),
                                                  Text(
                                                    "6 Items",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight: FontWeight.w100
                                                    ),
                                                  )
                                                ],
                                              ),
                                            )
                                        ),
                                      ),
                      
                                    ),
                                ],
                              ), 
                              ],
                            ),
                          ],
                        ),
                              ],
                            ),
                          ],
                        ),
                      ),
                  ],
            ),
              ),
          ],
          )
      ), 
    );
  } 
}