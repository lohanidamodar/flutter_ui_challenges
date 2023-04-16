/**
 * Author: Sudip Thapa  
 * profile: https://github.com/sudeepthapa
 * 
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */

import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/core/presentation/res/assets.dart';
import 'package:flutter_ui_challenges/src/widgets/network_image.dart';

class EcommerceFivePage extends StatelessWidget {
  const EcommerceFivePage({Key? key}) : super(key: key);
  static const String path = "lib/src/pages/ecommerce/ecommerce5.dart";

  Widget cards(image, title, price) {
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 6.0,
          ),
        ],
        color: Colors.white,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            PNetworkImage(
              image,
              height: 80,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(title,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            Container(
                padding: const EdgeInsets.all(5),
                margin: const EdgeInsets.only(top: 4),
                color: Colors.deepOrange,
                child: Text("\$ $price",
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 12))),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 1,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today),
              label: "Today's Special",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.fastfood,
                color: Colors.deepOrange,
              ),
              label: "Foods",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settings"),
          ],
        ),
        backgroundColor: Colors.white70.withOpacity(0.9),
        body: SafeArea(
          child: Stack(
            children: <Widget>[
              Container(
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                  color: Colors.orangeAccent.shade700,
                ),
                width: double.infinity,
              ),
              Container(
                margin: const EdgeInsets.only(left: 90, bottom: 20),
                width: 299,
                height: 279,
                decoration: BoxDecoration(
                    color: Colors.orangeAccent.shade400,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(160),
                        bottomLeft: Radius.circular(290),
                        bottomRight: Radius.circular(160),
                        topRight: Radius.circular(10))),
              ),
              CustomScrollView(
                slivers: <Widget>[
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.all(26.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          const Text("Good Morning",
                              style: TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white)),
                          const Text("Everyone",
                              style: TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.white)),
                          const SizedBox(
                            height: 40,
                          ),
                          Material(
                            elevation: 5.0,
                            borderRadius: const BorderRadius.all(Radius.circular(30)),
                            child: TextField(
                              controller:
                                  TextEditingController(text: 'Search...'),
                              cursorColor: Theme.of(context).primaryColor,
                              style:
                                  const TextStyle(color: Colors.black, fontSize: 18),
                              decoration: const InputDecoration(
                                  suffixIcon: Material(
                                    elevation: 2.0,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30)),
                                    child: Icon(Icons.search),
                                  ),
                                  border: InputBorder.none,
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 25, vertical: 13)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SliverPadding(
                    padding: const EdgeInsets.all(26.0),
                    sliver: SliverGrid.count(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      children: <Widget>[
                        cards(brocoli, 'Brocoli', '30'),
                        cards(cabbage, 'Cabbage', '37'),
                        cards(mango, 'Mango', '22'),
                        cards(pineapple, 'Pineapple', '90'),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
