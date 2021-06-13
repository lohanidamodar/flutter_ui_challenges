/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */

import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/core/presentation/res/assets.dart';
import 'package:flutter_ui_challenges/src/widgets/network_image.dart';

class BikeDetailsPage extends StatelessWidget {
  static final String path = "lib/src/pages/bike/bike_details.dart";
  final TextStyle bold = TextStyle(fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    final String title = "Bajaj Pulsar 220F";
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        elevation: 0,
      ),
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                        height: 250,
                        width: double.infinity,
                        child: PNetworkImage(
                          bike,
                          fit: BoxFit.cover,
                        )),
                    Positioned(
                      left: 20.0,
                      bottom: 10.0,
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      right: 10.0,
                      bottom: 0,
                      child: Chip(
                        elevation: 0,
                        labelStyle: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                        backgroundColor: Theme.of(context).primaryColor,
                        label: Text("Rs. 1,80,000"),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 6.0, bottom: 4.0),
                        child: Text(
                          "Key Specs",
                          style: Theme.of(context).textTheme.title,
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: <Widget>[
                            SpecsBlock(
                              label: "Engine",
                              value: "220 cc",
                              icon: Icon(
                                Icons.apps,
                              ),
                            ),
                            SpecsBlock(
                              label: "Mileage",
                              value: "150 kmpl",
                              icon: Icon(
                                Icons.apps,
                              ),
                            ),
                            SpecsBlock(
                              label: "Brakes",
                              value: "ABS",
                              icon: Icon(
                                Icons.apps,
                              ),
                            ),
                            SpecsBlock(
                              label: "Fuel Tank",
                              value: "12 L",
                              icon: Icon(
                                Icons.apps,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      Padding(
                        padding: const EdgeInsets.only(left: 6.0, bottom: 4.0),
                        child: Text(
                          "Free Gifts",
                          style: Theme.of(context).textTheme.subhead,
                        ),
                      ),
                      const SizedBox(height: 5.0),
                      Padding(
                        padding: const EdgeInsets.only(left: 6.0, bottom: 4.0),
                        child: Text("helmet, Gloves, Rain Coat, Bike Cover,"),
                      ),
                      const SizedBox(height: 10.0),
                      Padding(
                        padding: const EdgeInsets.only(left: 6.0, bottom: 4.0),
                        child: Text(
                          "Specification",
                          style: Theme.of(context).textTheme.title,
                        ),
                      ),
                      BorderedContainer(
                        padding: const EdgeInsets.all(0),
                        margin: const EdgeInsets.symmetric(vertical: 4.0),
                        child: ListTile(
                          title: Text("Manufactured Year"),
                          trailing: Text(
                            "2019",
                            style: bold,
                          ),
                        ),
                      ),
                      BorderedContainer(
                        padding: const EdgeInsets.all(0),
                        margin: const EdgeInsets.symmetric(vertical: 4.0),
                        child: ListTile(
                          title: Text("Number (Lot)"),
                          trailing: Text(
                            "Bagmati 80",
                            style: bold,
                          ),
                        ),
                      ),
                      BorderedContainer(
                        padding: const EdgeInsets.all(0),
                        margin: const EdgeInsets.symmetric(vertical: 4.0),
                        child: ListTile(
                          title: Text("Category"),
                          trailing: Text(
                            "Standard",
                            style: bold,
                          ),
                        ),
                      ),
                      BorderedContainer(
                        margin: const EdgeInsets.symmetric(vertical: 4.0),
                        padding: const EdgeInsets.all(0),
                        child: ListTile(
                          title: Text("Engine Serviced?"),
                          trailing: Text(
                            "Half",
                            style: bold,
                          ),
                        ),
                      ),
                      BorderedContainer(
                        margin: const EdgeInsets.symmetric(
                          vertical: 4.0,
                        ),
                        padding: const EdgeInsets.all(0),
                        child: ListTile(
                          title: Text("Ground Clearance"),
                          trailing: Text(
                            "150 mm",
                            style: bold,
                          ),
                        ),
                      ),
                      BorderedContainer(
                        margin: const EdgeInsets.symmetric(
                          vertical: 4.0,
                        ),
                        padding: const EdgeInsets.all(0),
                        child: ListTile(
                          title: Text("Seat height"),
                          trailing: Text(
                            "700 mm",
                            style: bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30.0),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: RaisedButton.icon(
              color: Theme.of(context).accentColor,
              textColor: Colors.white,
              icon: Icon(Icons.message),
              label: Text("Message Seller"),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}

class BorderedContainer extends StatelessWidget {
  final String? title;
  final Widget? child;
  final double? height;
  final double width;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final Color? color;
  final double elevation;

  const BorderedContainer({
    Key? key,
    this.title,
    this.child,
    this.height,
    this.padding,
    this.margin,
    this.color,
    this.width = double.infinity,
    this.elevation = 0.5,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      color: color,
      margin: margin ?? const EdgeInsets.all(0),
      child: Container(
        padding: padding ?? const EdgeInsets.all(16.0),
        width: width,
        height: height,
        child: title == null
            ? child
            : Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title!,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 28.0),
                  ),
                  if (child != null) ...[
                    const SizedBox(height: 10.0),
                    child!,
                  ]
                ],
              ),
      ),
    );
  }
}

class SpecsBlock extends StatelessWidget {
  const SpecsBlock({
    Key? key,
    this.icon,
    this.label,
    this.value,
  }) : super(key: key);

  final Widget? icon;
  final String? label;
  final String? value;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            if (icon != null) icon!,
            const SizedBox(height: 2.0),
            Text(
              label!,
              style: TextStyle(
                color: Colors.grey.shade800,
              ),
            ),
            const SizedBox(height: 5.0),
            Text(
              value!,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
