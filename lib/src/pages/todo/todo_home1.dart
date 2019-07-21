/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */
  
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TodoHomeOnePage extends StatelessWidget {
  static final String path = "lib/src/pages/todo/todo_home1.dart";
  final Color color1 = Color(0xffFA696C);
  final Color color2 = Color(0xffFA8165);
  final Color color3 = Color(0xffFB8964);
  final List tasks = [
    {"title":"Buy computer science book from Agarwal book store", "completed": true},
    {"title":"Send updated logo and source files", "completed": false},
    {"title":"Recharge broadband bill", "completed": false},
    {"title":"Pay telephone bill", "completed": false},
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _buildHeader(),
            SizedBox(height: 40.0),
            Container(
              height: 50,
              padding: const EdgeInsets.only(left: 20.0),
              child: OverflowBox(
                maxWidth: 500,
                alignment: Alignment.centerLeft,
                child: Row(
                  children: <Widget>[
                    Text("Today", style: TextStyle(
                      color: Colors.black,
                      fontSize: 45.0,
                      fontWeight: FontWeight.bold
                    ),),
                    SizedBox(width: 100),
                    Text("Tomorrow", style: TextStyle(
                      color: Colors.grey.shade400,
                      fontSize: 45.0,
                      fontWeight: FontWeight.bold
                    ),),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30.0),
            ...tasks.map((task)=>Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: ListTile(
                title: Text(task["title"], style: TextStyle(
                  decoration: task["completed"] ? TextDecoration.lineThrough : TextDecoration.none,
                  decorationColor: Colors.red,
                  fontSize: 22.0,
                  color: Colors.black
                ),)
            ))),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: Container(
          height: 50,
          child: Row(
            children: <Widget>[
              SizedBox(width: 20.0),
              IconButton(
                color: Colors.grey.shade700,
                icon: Icon(Icons.menu, size: 30,), onPressed: (){},),
              Spacer(),
              IconButton(
                color: Colors.grey.shade700,
                icon: Icon(FontAwesomeIcons.calendarAlt,size: 30,), onPressed: (){},),
              SizedBox(width: 20.0),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: color2,
        child: Icon(Icons.add),
        onPressed: (){},
      ),
    );
  }

  Container _buildHeader() {
    return Container(
            height: 250,
            width: double.infinity,
            child: Stack(
              children: <Widget>[
                Positioned(
                  bottom: 0,
                  left: -100,
                  top: -150,
                  child: Container(
                    width: 350,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        colors: [color1, color2]
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: color2,
                          offset: Offset(4.0,4.0),
                          blurRadius: 10.0
                        )
                      ]
                    ),
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      colors: [color3,color2]
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: color3,
                        offset: Offset(1.0,1.0),
                        blurRadius: 4.0
                      )
                    ]
                  ),
                ),
                Positioned(
                  top: 100,
                  right: 200,
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        colors: [color3,color2]
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: color3,
                          offset: Offset(1.0,1.0),
                          blurRadius: 4.0
                        )
                      ]
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    top: 60,
                    left: 30
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Himanshu", style: TextStyle(
                        color: Colors.white,
                        fontSize: 28.0,
                        fontWeight: FontWeight.w700
                      ),),
                      SizedBox(height: 10.0),
                      Text("You have 2 remaining\ntasks for today!", style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0
                      ),)
                    ],
                  ),
                )
              ],
            ),
          );
  }
}