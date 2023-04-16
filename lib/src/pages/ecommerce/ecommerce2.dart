/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */

import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/core/presentation/res/assets.dart';

class EcommerceTwoPage extends StatelessWidget {
  static const String path = "lib/src/pages/ecommerce/ecommerce2.dart";
  final List<Map> items = [
    {
      "title": "Kappa Velour",
      "category": "Bucket",
      "price": 5500,
      "tags": "#Cotton #polyster #Branded design",
      "image": images[0]
    },
    {
      "title": "North Salty",
      "category": "Bucket",
      "price": 67000,
      "tags": "#Cotton #polyster #Branded design",
      "image": images[1]
    },
    {
      "title": "Mest Takel",
      "category": "Bucket",
      "price": 67000,
      "tags": "#Cotton #polyster #Branded design",
      "image": images[2]
    },
  ];

   EcommerceTwoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.filter_list,
              color: Colors.grey.shade700,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.grey.shade700,
            ),
          ),
        ],
        backgroundColor: Colors.white70,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Colors.grey.shade700,
            )),
        title: const Text(
          'Shopping',
          style: TextStyle(
            color: Colors.black87,
          ),
        ),
        centerTitle: true,
        bottom: _buildBottomBar(),
      ),
      body: SafeArea(
          child: ListView.builder(
        itemBuilder: _buildListView,
        itemCount: items.length + 1,
      )),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.category), label: "Shop"),
        BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border), label: "Favorites"),
        BottomNavigationBarItem(
            icon: Icon(Icons.notifications), label: "Notifications"),
        BottomNavigationBarItem(
            icon: Icon(Icons.location_on), label: "Near me"),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Settings"),
      ],
      currentIndex: 0,
      type: BottomNavigationBarType.fixed,
      fixedColor: Colors.red,
    );
  }

  PreferredSize _buildBottomBar() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(80.0),
      child: Container(
        padding: const EdgeInsets.all(10.0),
        child: Card(
          child: TextField(
            decoration: InputDecoration(
                border: InputBorder.none,
                icon: IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
                suffixIcon:
                    IconButton(onPressed: () {}, icon: const Icon(Icons.mic))),
          ),
        ),
      ),
    );
  }

  Widget _buildListView(BuildContext context, int index) {
    if (index == 0) {
      return Container(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const Text(
              "Branded Bucket",
              style: TextStyle(fontSize: 18.0),
            ),
            Text("See All", style: TextStyle(color: Colors.grey.shade500)),
          ],
        ),
      );
    }
    Map item = items[index - 1];
    return _buildShopItem(item);
  }

  Widget _buildShopItem(Map item) {
    return Container(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
      margin: const EdgeInsets.only(bottom: 20.0),
      height: 300,
      child: Row(
        children: <Widget>[
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(item["image"]), fit: BoxFit.cover),
                borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.grey,
                      offset: Offset(5.0, 5.0),
                      blurRadius: 10.0)
                ]),
          )),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(20.0),
              margin: const EdgeInsets.only(top: 20.0, bottom: 20.0),
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(10.0),
                      topRight: Radius.circular(10.0)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        offset: Offset(5.0, 5.0),
                        blurRadius: 10.0)
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    item["title"],
                    style:
                        const TextStyle(fontSize: 22.0, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(item["category"],
                      style: const TextStyle(color: Colors.grey, fontSize: 18.0)),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Text("\$${item["price"].toString()}",
                      style: const TextStyle(
                        color: Colors.red,
                        fontSize: 30.0,
                      )),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Text(item["tags"],
                      style: const TextStyle(
                          fontSize: 18.0, color: Colors.grey, height: 1.5))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
