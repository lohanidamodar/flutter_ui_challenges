import 'package:flutter/material.dart';

class EcommerceDetailOnePage extends StatelessWidget {

  @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white70,
          elevation: 0,
        ),
        body: _buildPageContent(),
      );
    }

  Widget _buildPageContent() {
    return Container(
      child: Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              padding: EdgeInsets.all(20.0),
              children: <Widget>[
                Container(height: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/img/2.jpg'), fit: BoxFit.cover)
                  ),
                ),
                SizedBox(height: 20.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("\$500")
                  ],
                ),
                SizedBox(height: 20.0,),
                Text("Womens Casual Purse", textAlign: TextAlign.center, style: TextStyle(
                  fontSize: 28.0,
                ),),
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dignissim erat in accumsan tempus. Mauris congue luctus neque, in semper purus maximus iaculis. Donec et eleifend quam, a sollicitudin magna.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey.shade600
                  ),
                ),

                Container(
                  padding: EdgeInsets.all(10.0),
                  height: 100,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Image.asset('assets/img/1.jpg',height: 80,),
                      SizedBox(width: 20.0,),
                      Image.asset('assets/img/3.jpg',height: 80,),
                      SizedBox(width: 20.0,),
                      Image.asset('assets/img/4.jpg',height: 80,),
                    ],
                  ),
                )
              ],
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  color: Colors.transparent,
                  padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40.0)),
                    onPressed: (){},
                    child: Text("Add to Cart"),
                    color: Colors.orange,
                    textColor: Colors.white,
                  ),
                ),
              ),
            ],
          )

        ],
      ),
    );
  }

}