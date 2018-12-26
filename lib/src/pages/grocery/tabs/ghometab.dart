import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/src/pages/grocery/gdetails.dart';
import 'package:flutter_ui_challenges/src/pages/grocery/gwidgets/gcategory.dart';
import 'package:flutter_ui_challenges/src/pages/grocery/gwidgets/glistitem1.dart';
import 'package:flutter_ui_challenges/src/pages/grocery/gwidgets/glistitem2.dart';

class GroceryHomeTabView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        _buildCategories(),
        SizedBox(height: 10.0,),
        _buildListHeader("NEW ARRIVALS","SEE ALL"),
        _buildNewArrivalsRow(context),
        SizedBox(height: 10.0,),
        _buildListHeader("DAILY NEEDS","SEE ALL"),
        SizedBox(height: 10.0,),
        InkWell(
          onTap: ()=> _openDetailPage(context),
          child: GroceryListItemTwo(title: "Cabbage", image: "assets/grocery/cabbage.png", subtitle: "1 kg")),
        InkWell(
          onTap: ()=> _openDetailPage(context),
          child: GroceryListItemTwo(title: "Red/yellow Capsicum", image: "assets/grocery/capsicum.png", subtitle: "1 kg")),
        InkWell(
          onTap: ()=> _openDetailPage(context),
          child: GroceryListItemTwo(title: "Pineapple", image: "assets/grocery/pineapple.png", subtitle: "4 in a pack")),
      ],
    );
  }

  Widget _buildNewArrivalsRow(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10.0),
        height: 290.0,
        child: Row(
          children: <Widget>[
            Expanded(
              child: InkWell(
                onTap: () => _openDetailPage(context),
                child: GroceryListItemOne(
                  image: "assets/grocery/mango.png",
                  subtitle: "1 kg",
                  title: "Local Mango",
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: ()=> _openDetailPage(context),
                child: GroceryListItemOne(
                  image: "assets/grocery/brocoli.png",
                  subtitle: "6 in a pack",
                  title: "Broccoli",
                ),
              ),
            ),
            
          ],
        ),
      );
  }


  void _openDetailPage(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(
      builder: (BuildContext context) => GroceryDetailsPage()
    ));
  }

  Widget _buildListHeader(String left, String right) {
    return Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 10),
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              color: Colors.red,
              child: Text(left,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 10.0),
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              child: InkWell(
                onTap: (){},
                child: Text(right,
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
              ),
            ),
          ],
        )
      );
  }

  Widget _buildCategories() {
    return Container(
        height: 100,
        child: Row(
          children: <Widget>[
            SizedBox(width: 10.0,),
            GroceryCategory(
              backgroundColor: Color.fromRGBO(11, 200, 0, 0.15),
              image: 'assets/grocery/vegetables.png',
              title: "Vegetables",
            ),
            SizedBox(width: 10.0,),
            GroceryCategory(
              backgroundColor: Color.fromRGBO(200, 0, 11, 0.15),
              title: "Fruite",
              image: "assets/grocery/fruit.png",
            ),
            SizedBox(width: 10.0,),
            GroceryCategory(
              image: "assets/grocery/mortar.png",
              backgroundColor: Color.fromRGBO(20, 20, 15, 0.15),
              title: "Masala",
            )
          ],
        ),
      );
  }

}