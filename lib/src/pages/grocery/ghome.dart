import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/src/pages/grocery/tabs/gcarttab.dart';
import 'package:flutter_ui_challenges/src/pages/grocery/tabs/ghometab.dart';
import 'package:flutter_ui_challenges/src/pages/grocery/tabs/gprofiletab.dart';
import 'package:flutter_ui_challenges/src/pages/grocery/tabs/gwishlisttab.dart';

class GroceryHomePage extends StatefulWidget {

  @override
  GroceryHomePageState createState() {
    return new GroceryHomePageState();
  }
}

class GroceryHomePageState extends State<GroceryHomePage> {
  int _currentIndex = 0;
  List<Widget> _children = [];
  List<Widget> _appBars = [];

  @override
    void initState() {
      _children.add(GroceryHomeTabView());
      _children.add(GroceryCartTabView());
      _children.add(GroceryWishlistTabView());
      _children.add(GroceryProfileTabView());

      _appBars.add(_buildAppBar());
      _appBars.add(_buildAppBarOne("Your Cart"));
      _appBars.add(_buildAppBarOne("Your Wishlist"));
      _appBars.add(_buildAppBarOne("You"));
      super.initState();
    }

  @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: _appBars[_currentIndex],
        body: _children[_currentIndex],
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
  Widget _buildAppBarOne(String title) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      elevation: 0,
      title: Text(title, style: TextStyle(color: Colors.black)),
    );
  }


  BottomNavigationBar _buildBottomNavigationBar() {
    return BottomNavigationBar(
      onTap: _onTabTapped,
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
      currentIndex: _currentIndex,
    );
  }

  _onTabTapped(int index) {
    setState(() {
          _currentIndex = index;
        });
  }

}




