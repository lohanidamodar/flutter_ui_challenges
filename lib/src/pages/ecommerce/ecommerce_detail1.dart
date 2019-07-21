import 'package:flutter/material.dart';

class EcommerceDetailOnePage extends StatelessWidget {
  static final String path = "lib/src/pages/ecommerce/ecommerce_detail1.dart";
  @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            IconButton(icon: Icon(Icons.search, color: Colors.grey,), onPressed: (){},),
            IconButton(icon: Icon(Icons.shopping_basket, color: Colors.grey,), onPressed: (){},),
          ],
          leading: IconButton(icon: Icon(Icons.arrow_back_ios, color: Colors.grey,), onPressed: (){Navigator.pop(context);},),
          title: Text("Woman Apperals", style: TextStyle(color: Colors.grey.shade800),),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: _buildPageContent(),
      );
    }

  Widget _buildPageContent() {
    return Container(
      child: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            child: ListView(
              padding: EdgeInsets.all(20.0),
              children: <Widget>[
                Container(height: 320,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('assets/img/2.jpg'), fit: BoxFit.cover)
                  ),
                ),
                SizedBox(height: 20.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("\$500", style: TextStyle(
                      color: Colors.red,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600
                    ),)
                  ],
                ),
                SizedBox(height: 20.0,),
                Text("Womens Casual Purse", textAlign: TextAlign.center, style: TextStyle(
                  fontSize: 28.0,
                ),),
                SizedBox(height: 10.0,),
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dignissim erat in accumsan tempus. Mauris congue luctus neque, in semper purus maximus iaculis. Donec et eleifend quam, a sollicitudin magna.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey.shade600
                  ),
                ),

                _buildImagesGrid()
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              _buildAddToCartButton(),
            ],
          )

        ],
      ),
    );
  }

  Widget _buildImagesGrid() {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      padding: EdgeInsets.all(10.0),
      height: 150,
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
    );
  }

  Widget _buildAddToCartButton() {
    return Row(
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
    );
  }

}