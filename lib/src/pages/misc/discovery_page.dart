import 'package:flutter/material.dart';

class DiscoveryPage extends StatefulWidget {
  static const String path = "lib/src/pages/misc/discovery_page.dart";
  const DiscoveryPage({super.key});

  @override
  _DiscoveryPageState createState() => _DiscoveryPageState();
}

class _DiscoveryPageState extends State<DiscoveryPage> {
  BoxDecoration getBoxDecoration() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(5),
          topRight: Radius.circular(5),
          bottomLeft: Radius.circular(5),
          bottomRight: Radius.circular(5)),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 1,
          blurRadius: 2,
          offset: const Offset(0, 1), // changes position of shadow
        ),
      ],
    );
  }

  Expanded getExpanded(String imageName, String mainText, String subText) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          padding: const EdgeInsets.all(0),
        ),
        child: Container(
          margin:
              const EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0, bottom: 10.0),
          decoration: getBoxDecoration(),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Image.asset(
                    'assets/discoveryimages/$imageName.png',
                    height: 80.0,
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Text(
                  mainText,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0,
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Text(
                  subText,
                  style: const TextStyle(
//                              fontWeight: FontWeight.,
                    fontSize: 10.0,
                  ),
                ),
              ],
            ),
          ),
        ),
        onPressed: () {},
      ),
    );
  }

  BottomNavigationBarItem getBottomNavigationItem(
      String title, IconData iconName) {
    return BottomNavigationBarItem(
      icon: Icon(
        iconName,
        size: 35.0,
      ),
      label: title,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          "Discovery",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
        height: MediaQuery.of(context).size.height,
        color: Colors.grey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  getExpanded('beer', 'Bars & Hotels', '35 Place'),
                  getExpanded('cuisine', 'Fine Dining', '10 Place'),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  getExpanded('cafe', 'Cafes', '28 Place'),
                  // Spacer(),
                  getExpanded('tracking', 'Nearby', '34 Place'),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  getExpanded('dining', 'Fast Food', '29 Place'),
                  getExpanded('fast-food', 'Featured Foods', '21 Place'),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        //  currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
      ),
    );
  }
}
