import 'package:flutter/material.dart';

class EcommerceTwoPage extends StatelessWidget {
  
  @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          brightness: Brightness.light,
          automaticallyImplyLeading: false,
          actions: <Widget>[
            Icon(Icons.filter_list),
            Icon(Icons.shopping_cart)
          ],
          backgroundColor: Colors.blue,
          leading: Icon(Icons.menu),
          title: Text('Shopping'),
          centerTitle: true,
          bottom: _buildBottomBar(),
        ),
        body: SafeArea(
          child: ListView.builder(
            itemBuilder: _buildListView,
            itemCount: 10,
          )
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.category), title: Text("")),
            BottomNavigationBarItem(icon: Icon(Icons.favorite_border), title: Text("")),
            BottomNavigationBarItem(icon: Icon(Icons.notifications), title: Text("")),
            BottomNavigationBarItem(icon: Icon(Icons.location_on), title: Text("")),
            BottomNavigationBarItem(icon: Icon(Icons.settings), title: Text("")),
          ],
          currentIndex: 0,
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.red,
        ),
      );
    }

  PreferredSize _buildBottomBar() {
    return PreferredSize(
          child: Container(
            padding: EdgeInsets.all(10.0),
            child: Card(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: Icon(Icons.search),
                    suffixIcon: Icon(Icons.mic)
                  ),
                ),
              ),
            ),
          ),
          preferredSize: Size.fromHeight(100.0),
        );
  }

  Widget _buildListView(BuildContext context, int index) {
    return Text("Hello Text");
  }
}