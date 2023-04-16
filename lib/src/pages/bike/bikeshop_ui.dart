import 'package:flutter/material.dart';

class MoterBikeShopPage extends StatelessWidget {
  static const String path = "lib/src/pages/bike/bikeshop_ui.dart";

  const MoterBikeShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'avenir',
      ),
      debugShowCheckedModeBanner: false,
      home: const DetailsPage(),
    );
  }
}

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  String selectedButton = "All";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xfff5f6fa),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
              children: <Widget>[
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.15,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.only(left: 30),
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: Stack(
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.only(top: 40),
                              child: const Text("Bike Shop Name",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 20,
                                  )),
                            )
                          ],
                        ),
                      ),
                      Container(
                        decoration: const BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20))),
                        width: MediaQuery.of(context).size.width * 0.25,
                        height: 80,
                        child: IconButton(
                          onPressed: () {},
                          padding: const EdgeInsets.only(top: 5),
                          icon: const Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    RotatedBox(
                      quarterTurns: 3,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 3),
                        child: Row(
                          children: <Widget>[
                            title("All"),
                            title("Kids"),
                            title("Men"),
                            title("Woman"),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.85,
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Text(
                              "New Arrival",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              height: 380,
                              width: MediaQuery.of(context).size.width * 0.8,
                              child: ListView(
                                physics: const BouncingScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                children: <Widget>[
                                  newArrivalWidget(
                                      "24A", "400W", "30Km", "250,000"),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  newArrivalWidget(
                                      "22A", "300W", "25Km", "200,000"),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  newArrivalWidget(
                                      "20A", "320W", "27Km", "300,000"),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              "Best Sellers",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            SizedBox(
                              height: 300,
                              width: MediaQuery.of(context).size.width * 0.8,
                              child: ListView(
                                physics: const BouncingScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                children: <Widget>[
                                  bestSellerWidget(
                                      "Honda Bike", "Prospero", "150,000"),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  bestSellerWidget(
                                      "Bullet Bike", "Rero", "400,000"),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  bestSellerWidget(
                                      "Plusar Bike", "Mount", "250,000"),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ));
  }

  Container title(String titleName) {
    return Container(
      width: 100,
      padding: const EdgeInsets.only(right: 20),
      child: InkWell(
        child: Column(
          children: <Widget>[
            Container(
              height: titleName == selectedButton ? 3 : 0,
              color: Colors.black,
            ),
            Text(
              titleName,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color:
                    titleName == selectedButton ? Colors.black : Colors.black45,
              ),
            )
          ],
        ),
        onTap: () {
          selectedButton = titleName;
          setState(() {});
        },
      ),
    );
  }

  Container bestSellerWidget(
      String bikeName, String companyName, String price) {
    return Container(
      width: 200,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              blurRadius: 0.5,
              spreadRadius: 0.5,
            )
          ]),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 200,
              height: 150,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/bike%2Fbike1.jpg?alt=media'),
                      fit: BoxFit.contain)),
            ),
            Text(
              bikeName,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              companyName,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  price,
                  style: const TextStyle(
                    color: Colors.orange,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.add_shopping_cart,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Container newArrivalWidget(
      String battery, String enginePower, String distance, String price) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 0.5,
              spreadRadius: 0.5,
            )
          ]),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            const Text(
              "All Terrain",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(30),
              child: Center(
                child: Image.network(
                    'https://firebasestorage.googleapis.com/v0/b/dl-flutter-ui-challenges.appspot.com/o/bike%2Fbike1.jpg?alt=media'),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      battery,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "Battery",
                      style: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.normal),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      enginePower,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text("Engine",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                        ))
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      distance,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      "Distance",
                      style: TextStyle(
                          fontSize: 15, fontWeight: FontWeight.normal),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(price,
                    style: const TextStyle(
                        fontSize: 22,
                        color: Colors.orange,
                        fontWeight: FontWeight.bold)),
                IconButton(
                  onPressed: () {},
                  iconSize: 30,
                  icon: const Icon(Icons.add_shopping_cart),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
