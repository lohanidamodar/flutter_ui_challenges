/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:flutter_ui_challenges/core/presentation/res/assets.dart';
import 'package:flutter_ui_challenges/src/pages/bike/bike_details.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BikeHomePage extends StatelessWidget {
  static final String path = "lib/src/pages/bike/home_page.dart";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bikes'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 16.0, top: 16.0),
              child: Text(
                "Categories",
                style: Theme.of(context).textTheme.subhead,
              ),
            ),
            CategoryChooser(
              onTap: (category) => Navigator.pushNamed(
                  context, 'category_bikes',
                  arguments: category),
            ),
            const SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Card(
                child: Container(
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.0),
                    color: Colors.indigo,
                  ),
                  child: Swiper(
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return Row(
                        children: <Widget>[
                          const SizedBox(width: 20.0),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "Buy, Sell, Exchange",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                  ),
                                ),
                                Text(
                                  "All in one place",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 10.0),
                          CircleAvatar(
                            backgroundColor: Colors.indigo.shade800,
                            radius: 50,
                            child: Icon(
                              FontAwesomeIcons.moneyBill,
                              size: 30,
                            ),
                          ),
                          const SizedBox(width: 20.0),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: <Widget>[
                  Text(
                    "Recent Posts",
                    style: Theme.of(context).textTheme.subhead,
                  ),
                  Spacer(),
                  FlatButton(
                    child: Text("View all"),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: <Widget>[
                  BikeListItem(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => BikeDetailsPage(),
                        )),
                  ),
                  BikeListItem(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => BikeDetailsPage(),
                        )),
                  ),
                  BikeListItem(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => BikeDetailsPage(),
                        )),
                  ),
                  BikeListItem(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => BikeDetailsPage(),
                        )),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}

class CategoryChooser extends StatelessWidget {
  final Function(String)? onTap;
  const CategoryChooser({
    Key? key,
    this.onTap,
  }) : super(key: key);
  final List<String> types = const [
    "Standard",
    "Cruiser",
    "Sports",
    "Dirt",
    "Scooter",
    "Electric"
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(
          vertical: 8.0,
          horizontal: 16.0,
        ),
        scrollDirection: Axis.horizontal,
        itemCount: types.length,
        itemBuilder: (context, index) {
          String type = types[index];
          return GestureDetector(
            onTap: onTap != null ? () => onTap!(type) : null,
            child: Column(
              children: <Widget>[
                Container(
                  width: 60.0,
                  height: 60.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(bike), fit: BoxFit.cover),
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(height: 5.0),
                Text(
                  type,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) => SizedBox(
          width: 10.0,
        ),
      ),
    );
  }
}

class BikeListItem extends StatelessWidget {
  final String? thirdTitle;
  final bool imageRight;
  final double elevation;
  final void Function()? onTap;

  const BikeListItem(
      {Key? key,
      this.thirdTitle,
      this.imageRight = false,
      this.elevation = 0.5,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String title = "Bajaj Pulsar 220F";
    return Card(
      elevation: elevation,
      child: InkWell(
        borderRadius: BorderRadius.circular(4.0),
        onTap: onTap,
        child: Row(
          children: <Widget>[
            _buildThumbnail(),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(16.0),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            title,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14.0),
                            softWrap: true,
                          ),
                        ),
                        _buildTag(context)
                      ],
                    ),
                    const SizedBox(height: 5.0),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "Year 2019",
                          ),
                        ],
                      ),
                      style: TextStyle(color: Colors.grey.shade700),
                    ),
                    const SizedBox(height: 5.0),
                    Row(
                      children: <Widget>[
                        Text("Condition"),
                        const SizedBox(width: 10.0),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container _buildThumbnail() {
    return Container(
      height: 120,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: imageRight
            ? BorderRadius.only(
                topRight: Radius.circular(4.0),
                bottomRight: Radius.circular(4.0),
              )
            : BorderRadius.only(
                topLeft: Radius.circular(4.0),
                bottomLeft: Radius.circular(4.0),
              ),
        image: DecorationImage(
          image: NetworkImage(bike),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Container _buildTag(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 5.0,
        horizontal: 8.0,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Theme.of(context).primaryColor),
      child: Text(
        "Rs. 1,80,000",
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}
