/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */

import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_ui_challenges/core/presentation/res/assets.dart'
    as assets;
import 'package:flutter_ui_challenges/src/widgets/network_image.dart';

class EcommerceOnePage extends StatelessWidget {
  static const String path = "lib/src/pages/ecommerce/ecommerce1.dart";
  final List<String> categories = [
    'DarazMall',
    'Flash Sales',
    'Collection',
    'Vouchers',
    'Categories'
  ];
  final List<String> images = [
    assets.images[0],
    assets.images[2],
    assets.images[1],
    assets.images[3]
  ];
  final List<String> flashSaleImages = [
    assets.backgroundImages[0],
    assets.backgroundImages[2],
    assets.backgroundImages[1]
  ];

   EcommerceOnePage({super.key});

  Widget _buildListView(_, index) {
    if (index == 0) return _buildSlider();
    if (index == 1) return _buildCategoriesGrid();
    if (index == 2) return _buildFlashSales();
    if (index == 3) return _buildPopular();
    if (index == 4) {
      return const Center(
          child: Text(
        'Just for You',
        style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0),
      ));
    }
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[
                PNetworkImage(images[index % images.length]),
                const SizedBox(
                  height: 10.0,
                ),
                const Text(
                  'Top Quality fashion item',
                  softWrap: true,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const Text(
                  'Rs.1,254',
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                )
              ],
            ),
          ),
          const SizedBox(
            width: 10.0,
          ),
          Expanded(
            child: Column(
              children: <Widget>[
                PNetworkImage(images[(index - 1) % images.length]),
                const SizedBox(
                  height: 10.0,
                ),
                const Text(
                  'Top Quality fashion item',
                  softWrap: true,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const Text(
                  'Rs.1,254',
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPopular() {
    return SizedBox(
      height: 180,
      child: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: <Widget>[
                _buildPopularItem(),
                const SizedBox(
                  width: 10.0,
                ),
                _buildPopularItem(),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: <Widget>[
                _buildPopularItem(),
                const SizedBox(
                  width: 10.0,
                ),
                _buildPopularItem(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Expanded _buildPopularItem() {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey.shade200,
            border: Border(
                left: BorderSide(
                    color: Colors.red.shade200,
                    style: BorderStyle.solid,
                    width: 5))),
        child: ListTile(
          onTap: () {},
          title: const Text("Vehicles"),
          subtitle: const Text('120 people want this'),
          trailing: SizedBox(
              width: 50,
              child: PNetworkImage(
                assets.backgroundImages[1],
                fit: BoxFit.cover,
              )),
        ),
      ),
    );
  }

  Widget _buildFlashSales() {
    return Container(
      height: 200,
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  const Text(
                    'Flash Sales',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Container(
                      color: Colors.black,
                      padding:
                          const EdgeInsets.symmetric(vertical: 2.0, horizontal: 5.0),
                      child: const Text(
                        '02',
                        style: TextStyle(color: Colors.white),
                      )),
                  const SizedBox(
                    width: 5.0,
                  ),
                  Container(
                      color: Colors.black,
                      padding:
                          const EdgeInsets.symmetric(vertical: 2.0, horizontal: 5.0),
                      child: const Text(
                        '20',
                        style: TextStyle(color: Colors.white),
                      )),
                  const SizedBox(
                    width: 5.0,
                  ),
                  Container(
                      color: Colors.black,
                      padding:
                          const EdgeInsets.symmetric(vertical: 2.0, horizontal: 5.0),
                      child: const Text(
                        '30',
                        style: TextStyle(color: Colors.white),
                      )),
                ],
              ),
              const Text(
                'SHOP MORE >>',
                style: TextStyle(color: Colors.red),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: <Widget>[
              _buildFlashSaleItem(0),
              _buildFlashSaleItem(1),
              _buildFlashSaleItem(2),
            ],
          )
        ],
      ),
    );
  }

  Expanded _buildFlashSaleItem(int index) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: <Widget>[
            Container(
              height: 80,
              // color: Colors.blue,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(flashSaleImages[index]),
                      fit: BoxFit.cover)),
            ),
            const SizedBox(
              height: 5.0,
            ),
            Stack(
              children: <Widget>[
                ClipPath(
                  clipper: const ShapeBorderClipper(
                      shape: StadiumBorder(
                          side: BorderSide(
                              width: 1,
                              style: BorderStyle.solid,
                              color: Colors.red))),
                  child: Container(
                    height: 20,
                    color: Colors.red.shade200,
                  ),
                ),
                ClipPath(
                  clipper: const ShapeBorderClipper(
                      shape: StadiumBorder(
                          side: BorderSide(
                              width: 1,
                              style: BorderStyle.solid,
                              color: Colors.red))),
                  child: Container(
                    padding: const EdgeInsets.only(left: 10.0),
                    height: 20,
                    width: 70,
                    color: Colors.red,
                    child: const Text(
                      '12 Sold',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5.0,
            ),
            const Text('Rs.275')
          ],
        ),
      ),
    );
  }

  Widget _buildSlider() {
    return SizedBox(
      height: 120.0,
      child: Stack(
        children: <Widget>[
          ClipPath(
            clipper: DiagonalPathClipperOne(),
            child: Container(
              height: 110,
              color: Colors.deepPurple,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Swiper(
              autoplay: true,
              itemBuilder: (BuildContext context, int index) {
                return PNetworkImage(
                  images[index],
                  fit: BoxFit.cover,
                );
              },
              itemCount: 4,
              pagination: const SwiperPagination(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategoriesGrid() {
    return SizedBox(
      height: 110.0,
      child: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        scrollDirection: Axis.horizontal,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          mainAxisSpacing: 10.0,
        ),
        itemBuilder: (_, int index) {
          return GestureDetector(
            onTap: () => print(categories[index]),
            child: Column(
              children: <Widget>[
                const CircleAvatar(
                  backgroundColor: Colors.blue,
                  maxRadius: 30.0,
                  child: Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                Text(categories[index % categories.length])
              ],
            ),
          );
        },
        itemCount: categories.length,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text('Flutter UIs'),
        elevation: 0,
      ),
      body: SafeArea(
          child: ListView.builder(
        itemBuilder: _buildListView,
        itemCount: 10,
      )),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Messages'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.red,
      ),
    );
  }
}
