import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class EcommerceTwoPage extends StatelessWidget {
  static final String path = "lib/src/pages/ecommerce/ecommerce2.dart";
  final List<Map> items = [
    {"title":"Kappa Velour", "category":"Bucket", "price": 5500, "tags":"#Cotton #polyster #Branded design","image":"assets/img/1.jpg"},
    {"title":"North Salty", "category":"Bucket", "price": 67000, "tags":"#Cotton #polyster #Branded design","image":"assets/img/2.jpg"},
    {"title":"Mest Takel", "category":"Bucket", "price": 67000, "tags":"#Cotton #polyster #Branded design","image":"assets/img/3.jpg"},
  ];


  @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: <Widget>[
            IconButton(
              onPressed: (){},
              icon: Icon(Icons.filter_list, color: Colors.grey.shade700,),
            ),
            IconButton(
              onPressed: (){},
              icon: Icon(Icons.shopping_cart, color: Colors.grey.shade700,),
            ),
          ],
          backgroundColor: Colors.white70,
          leading: IconButton(
            onPressed: (){},
            icon: Icon(Icons.menu, color: Colors.grey.shade700,)),
          title: Text('Shopping', style: TextStyle(
            color: Colors.black87,
          ),),
          centerTitle: true,
          bottom: _buildBottomBar(),
        ),
        body: SafeArea(
          child: ListView.builder(
            itemBuilder: _buildListView,
            itemCount: items.length + 1,
          )
        ),
        bottomNavigationBar: _buildBottomNavigationBar(),
      );
    }

  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.category), title: Text("Shop")),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), title: Text("Favorites")),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), title: Text("Notifications")),
          BottomNavigationBarItem(icon: Icon(Icons.location_on), title: Text("Near me")),
          BottomNavigationBarItem(icon: Icon(Icons.settings), title: Text("Settings")),
        ],
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.red,
      );
  }

  PreferredSize _buildBottomBar() {
    return PreferredSize(
          child: Container(
            padding: EdgeInsets.all(10.0),
            child: Card(
              child: Container(
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: IconButton(onPressed: (){}, icon: Icon(Icons.search)),
                    suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.mic))
                  ),
                ),
              ),
            ),
          ),
          preferredSize: Size.fromHeight(80.0),
        );
  }

  Widget _buildListView(BuildContext context, int index) {
    if(index==0) return Container(
      padding: EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text("Branded Bucket",
          style: TextStyle(
            fontSize: 18.0
          ),),
          Text("See All", style: TextStyle(color: Colors.grey.shade500)),
        ],
      ),
    );
    Map item = items[index-1];
    return _buildShopItem(item);
  }

  Widget _buildShopItem(Map item) {
    return Container(
        padding: EdgeInsets.only(left: 10.0, right: 10.0),
        margin: EdgeInsets.only(bottom: 20.0),
        height: 300,
        child: Row(
          children: <Widget>[
            Expanded(child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(item["image"]), fit: BoxFit.cover),
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                boxShadow: [
                  BoxShadow(color: Colors.grey,offset: Offset(5.0,5.0), blurRadius: 10.0)
                ]
              ),
            )),
            Expanded(child: Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(item["title"],style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.w700
                  ),),
                  SizedBox(height: 10.0,),
                  Text(item["category"], style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18.0
                  )),
                  SizedBox(height: 20.0,),
                  Text("\$${item["price"].toString()}", style: TextStyle(
                    color: Colors.red,
                    fontSize: 30.0,
                  )),
                  SizedBox(height: 20.0,),
                  Text(item["tags"], style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.grey,
                    height: 1.5
                  ))
                ],
              ),
              margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(10.0), topRight: Radius.circular(10.0)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(color: Colors.grey,offset: Offset(5.0,5.0), blurRadius: 10.0)
                ]
              ),
            ),)
          ],
        ),
      );
  }
}