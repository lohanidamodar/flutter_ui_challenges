import 'package:flutter/material.dart';

class DestinationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: 300,
            decoration: BoxDecoration(
              // color: Colors.blue,
              image: DecorationImage(image: AssetImage('assets/travel/kathmandu1.jpg'), fit: BoxFit.cover)
            ),
          ),
          ListView(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 200, left: 40),
                child: Card(
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
                              Navigator.pop(context);},),
                            Text("Kathmandu", style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold
                            )),
                            IconButton(icon: Icon(Icons.star_border),onPressed: (){},)
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(20.0,0,20.0,16.0),
                          child: Text("Kathmandu, worlds spiritual capital mixes the traditional cultures of Nepal as well as the modern technology.", textAlign: TextAlign.justify,))
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(child: Text("Places to visit")),
                  FlatButton(
                    textColor: Colors.red,
                    onPressed: (){},
                    child: Text("See All")),
                ],
              ),
              Container(
                height: 150.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    _buildPlaceToVisit(image: 'assets/travel/pashupatinath.jpg',title: "Pashupatinath"),
                    SizedBox(width: 20.0,),
                    _buildPlaceToVisit(image: 'assets/travel/kathmandu2.jpg',title: "Swoyambhunath"),
                    SizedBox(width: 20.0,),
                    _buildPlaceToVisit(image: 'assets/travel/kathmandu1.jpg',title: "Durbar Square"),
                    SizedBox(width: 20.0,),
                    _buildPlaceToVisit(image: 'assets/travel/pashupatinath.jpg',title: "Pashupatinath"),
                    SizedBox(width: 20.0,),
                    _buildPlaceToVisit(image: 'assets/travel/kathmandu2.jpg',title: "Swoyambhunath"),
                  ],
                ),
              )
            ],
          ),
        ],
      ),

    );
  }

  Widget _buildPlaceToVisit({String image, String title}) {
    return Column(
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(5.0),
          child: Image.asset(image, height: 80,fit: BoxFit.cover,),
        ),
        SizedBox(height: 5.0,),
        Text(title)
      ],
    );
  }
}