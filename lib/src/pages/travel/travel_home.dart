/**
 * Author: Sudip Thapa  
 * profile: https://github.com/sudeepthapa
  */

import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/src/widgets/network_image.dart';

class TravelHome extends StatelessWidget {
  static const String path = "lib/src/pages/travel/travel_home.dart";

  const TravelHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[const HomeScreenTop(), homeScreenBottom],
      ),
    );
  }
}

class HomeScreenTop extends StatefulWidget {
  const HomeScreenTop({super.key});

  @override
  _HomeScreenTopState createState() => _HomeScreenTopState();
}

class _HomeScreenTopState extends State<HomeScreenTop> {
  final TextStyle dropdownMenuLabel =
      const TextStyle(color: Colors.white, fontSize: 16);
  final TextStyle dropdownMenuItem =
      const TextStyle(color: Colors.black, fontSize: 18);
  List<String> locations = ['Kathmandu', 'Bhaktapur'];
  var selectedLocationIndex = 0;
  bool isflightSelected = true;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipPath(
          clipper: WaveClipper(),
          child: Container(
            height: 350,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xfffb53c6), Color(0xffb91d73)])),
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: <Widget>[
                      const Icon(
                        Icons.location_on,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      PopupMenuButton(
                        onSelected: (dynamic index) {
                          setState(() {
                            selectedLocationIndex = index;
                          });
                        },
                        child: Row(
                          children: <Widget>[
                            Text(
                              locations[selectedLocationIndex],
                              style: dropdownMenuLabel,
                            ),
                            const Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.white,
                            )
                          ],
                        ),
                        itemBuilder: (BuildContext context) =>
                            <PopupMenuItem<int>>[
                          PopupMenuItem(
                            value: 0,
                            child: Text(
                              locations[0],
                              style: dropdownMenuItem,
                            ),
                          ),
                          PopupMenuItem(
                            value: 1,
                            child: Text(
                              locations[1],
                              style: dropdownMenuItem,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.settings,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const SizedBox(
                    width: 250,
                    child: Text(
                      "Where do you want to go ?",
                      style: TextStyle(
                          fontFamily: 'OpenSans',
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.normal),
                      textAlign: TextAlign.center,
                    )),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                    child: TextField(
                      controller: TextEditingController(text: locations[0]),
                      cursorColor: Theme.of(context).primaryColor,
                      style: dropdownMenuItem,
                      decoration: const InputDecoration(
                          suffixIcon: Material(
                            elevation: 2.0,
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            child: Icon(Icons.search),
                          ),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 25, vertical: 13)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    InkWell(
                        onTap: () {
                          setState(() {
                            isflightSelected = true;
                          });
                        },
                        child: ChoiceChip(
                            Icons.flight_takeoff, "Flights", isflightSelected)),
                    const SizedBox(
                      width: 20,
                    ),
                    InkWell(
                        onTap: () {
                          setState(() {
                            isflightSelected = false;
                          });
                        },
                        child: ChoiceChip(
                            Icons.hotel, "Hotel", !isflightSelected)),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ChoiceChip extends StatefulWidget {
  final IconData icon;
  final String text;
  final bool isflightSelected;
  const ChoiceChip(this.icon, this.text, this.isflightSelected, {super.key});
  @override
  _ChoiceChipState createState() => _ChoiceChipState();
}

class _ChoiceChipState extends State<ChoiceChip> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: widget.isflightSelected
          ? BoxDecoration(
              color: Colors.white.withOpacity(.15),
              borderRadius: const BorderRadius.all(Radius.circular(20)))
          : null,
      child: Row(
        children: <Widget>[
          Icon(
            widget.icon,
            size: 20,
            color: Colors.white,
          ),
          const SizedBox(
            width: 8,
          ),
          Text(widget.text, style: const TextStyle(color: Colors.white, fontSize: 14))
        ],
      ),
    );
  }
}

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0.0, size.height);

    var firstEndPoint = Offset(size.width / 2, size.height - 30);
    var firstControlPoint = Offset(size.width / 4, size.height - 53);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);
    var secondEndPoint = Offset(size.width, size.height - 90);
    var secondControlPoint = Offset(size.width * 3 / 4, size.height - 14);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

final Widget homeScreenBottom = Column(
  children: <Widget>[
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          const Text("Currently Watched Items",
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 15,
                  fontWeight: FontWeight.w700)),
          const Spacer(),
          Builder(
              builder: (BuildContext context) => Text(
                    "View All",
                    style: TextStyle(
                        fontSize: 14, color: Theme.of(context).primaryColor),
                  ))
        ],
      ),
    ),
    SizedBox(
      height: 210,
      child: ListView(scrollDirection: Axis.horizontal, children: cityCards),
    )
  ],
);

List<CityCard> cityCards = [
  const CityCard(
      "https://cdn.pixabay.com/photo/2013/03/02/02/41/city-89197_960_720.jpg",
      "Kathmandu",
      "12 Feb",
      "10",
      "500",
      '440'),
  const CityCard(
      "https://cdn.pixabay.com/photo/2017/12/10/17/40/prague-3010407_960_720.jpg",
      "Bhaktapur",
      "12 Feb",
      "10",
      "500",
      '440'),
  const CityCard(
      "https://cdn.pixabay.com/photo/2014/07/01/12/35/taxi-cab-381233_960_720.jpg",
      "Morang",
      "12 Feb",
      "10",
      "500",
      '440'),
];

class CityCard extends StatelessWidget {
  final String imagePath, cityName, monthYear, discount, oldPrice, newPrice;
  const CityCard(this.imagePath, this.cityName, this.monthYear, this.discount,
      this.oldPrice, this.newPrice, {super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        child: Stack(
          children: <Widget>[
            SizedBox(
              width: 160,
              height: 210,
              child: PNetworkImage(
                imagePath,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              left: 0,
              bottom: 0,
              width: 160,
              height: 60,
              child: Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [Colors.black, Colors.black12])),
              ),
            ),
            Positioned(
              left: 10,
              bottom: 10,
              width: 145,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        cityName,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 1),
                      ),
                      Text(
                        monthYear,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                  Container(
                      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Text(
                        "$discount%",
                        style: const TextStyle(color: Colors.black, fontSize: 14),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
