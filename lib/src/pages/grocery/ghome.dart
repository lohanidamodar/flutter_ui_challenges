import 'package:flutter/material.dart';

class GroceryHomePage extends StatelessWidget {

  @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: _buildAppBar(),
        body: _buildPageContent(),
        bottomNavigationBar: _buildBottomNavigationBar(),
      );
    }

  Widget _buildAppBar() {
    return PreferredSize(
        preferredSize: Size.fromHeight(90.0),
        child: Container(
          margin: EdgeInsets.only(top: 20.0),
          child: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: Container(
              child: Card(
                child: Container(
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
                      hintText: "Search products",
                      border: InputBorder.none,
                      suffixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.search))
                    ),
                  ),
                ),
              ),
            ),
            leading: Image.asset('assets/grocery/delivery.png'),
          ),
        ),
      );
  }

  BottomNavigationBar _buildBottomNavigationBar() {
    return BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home")),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text("Cart")),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            title: Text("Wishlist")),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            title: Text("You")),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
      );
  }

  Widget _buildPageContent() {
    return ListView(
      children: <Widget>[
        _buildCategories(),
        SizedBox(height: 10.0,),
        _buildListHeader("NEW ARRIVALS","SEE ALL"),
        _buildNewArrivalsRow(),
        SizedBox(height: 10.0,),
        _buildListHeader("DAILY NEEDS","SEE ALL"),
        SizedBox(height: 10.0,),
        _buildDailyNeedsListItem(
          title: "Cabbage",
          image: "assets/grocery/cabbage.png",
          subtitle: "1 kg"
        ),
        _buildDailyNeedsListItem(
          title: "Red/yellow Capsicum",
          image: "assets/grocery/capsicum.png",
          subtitle: "1 kg"
        ),
        _buildDailyNeedsListItem(
          title: "Pineapple",
          image: "assets/grocery/pineapple.png",
          subtitle: "4 in a pack"
        ),
      ],
    );
  }

  Card _buildDailyNeedsListItem({String title, String subtitle,String image}) {
    return Card(
        child: ListTile(
          leading: Container(
            height: 80.0,
            child: Image.asset(image, height: 80.0,)),
          title: Container(
            height: 100.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _buildListItemTitle(title),
                _buildListItemSubtitle(subtitle)
              ],
            ),
          ),
          trailing: Column(
            children: <Widget>[
              IconButton(icon: Icon(Icons.favorite_border), onPressed: (){},),
              IconButton(icon: Icon(Icons.add,), color: Colors.green, onPressed: (){},)
            ],
          ),
        ),
      );
  }

  Widget _buildNewArrivalsRow() {
    return Container(
        padding: EdgeInsets.all(10.0),
        height: 290.0,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(5.0), topRight: Radius.circular(5.0)),
                  boxShadow: [
                    BoxShadow(blurRadius: 10.0,color: Colors.grey.shade200,spreadRadius: 2.0)
                  ]
                ),
                margin: EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(child: Image.asset('assets/grocery/mango.png', height: 150.0,)),
                            _buildListItemTitle("Local Mango"),
                            _buildListItemSubtitle("1 kg"),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: InkWell(
                            onTap: (){},
                            child: Container(
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                color: Colors.yellow,
                                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5.0), bottomRight: Radius.circular(5.0))
                              ),
                              child: Text("Add to Cart", textAlign: TextAlign.center,),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(5.0), topRight: Radius.circular(5.0)),
                  boxShadow: [
                    BoxShadow(blurRadius: 10.0,color: Colors.grey.shade200,spreadRadius: 2.0)
                  ]
                ),
                margin: EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(child: Image.asset('assets/grocery/brocoli.png', height: 150.0,)),
                            _buildListItemTitle("Broccoli"),
                            _buildListItemSubtitle("5 in a pack")
                          ],
                        ),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: InkWell(
                            onTap: (){},
                            child: Container(
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                color: Colors.yellow,
                                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5.0), bottomRight: Radius.circular(5.0))
                              ),
                              child: Text("Add to Cart", textAlign: TextAlign.center,),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            
          ],
        ),
      );
  }

  Text _buildListItemSubtitle(String text) {
    return Text(text, style: TextStyle(
      color: Colors.grey
    ));
  }

  Text _buildListItemTitle(String text) {
    return Text(text, style: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 18.0
    ),);
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
                    Image.asset('assets/grocery/vegetables.png'),
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
                    Image.asset('assets/grocery/fruit.png'),
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
                    Image.asset('assets/grocery/mortar.png'),
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