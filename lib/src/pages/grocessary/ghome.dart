import 'package:flutter/material.dart';

class GrocessaryHomePage extends StatelessWidget {

  @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white70,
          title: TextField(),
          leading: Icon(Icons.school, color: Colors.grey.shade800,),
        ),
        body: _buildPageContent(),
      );
    }

  Widget _buildPageContent() {
    return ListView(
      children: <Widget>[
        _buildCategories()

      ],
    );
  }

  Widget _buildCategories() {
    return Container(
        height: 100,
        child: Row(
          children: <Widget>[
            SizedBox(width: 10.0,),
            InkWell(
              onTap: (){},
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(11, 200, 0, 0.15),
                  borderRadius: BorderRadius.all(Radius.circular(5.0))
                ),
                margin: EdgeInsets.symmetric(vertical: 10.0),
                padding: EdgeInsets.all(10.0),
                width: 100,
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/grocessary/vegetables.png'),
                    Text("Vegetables")
                  ],
                ),
              ),
            ),
            SizedBox(width: 10.0,),
            InkWell(
              onTap: (){},
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(200, 0, 11, 0.15),
                  borderRadius: BorderRadius.all(Radius.circular(5.0))
                ),
                margin: EdgeInsets.symmetric(vertical: 10.0),
                padding: EdgeInsets.all(10.0),
                width: 100,
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/grocessary/vegetables.png'),
                    Text("Fruits")
                  ],
                ),
              ),
            ),
            SizedBox(width: 10.0,),
            InkWell(
              onTap: (){},
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(20, 20, 15, 0.15),
                  borderRadius: BorderRadius.all(Radius.circular(5.0))
                ),
                margin: EdgeInsets.symmetric(vertical: 10.0),
                padding: EdgeInsets.all(10.0),
                width: 100,
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/grocessary/mortar.png'),
                    Text("Masala")
                  ],
                ),
              ),
            ),
          ],
        ),
      );
  }

}