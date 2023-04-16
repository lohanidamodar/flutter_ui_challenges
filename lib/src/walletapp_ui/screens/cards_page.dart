import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      child: DraggableScrollableSheet(
        builder: (context, scrollController) {
          return Container(
            decoration: const BoxDecoration(
                color: Color.fromRGBO(243, 245, 248, 1),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40))),
            child: SingleChildScrollView(
              controller: scrollController,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(
                    height: 24,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget>[
                            Text(
                              "Your Cards",
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 24,
                                  color: Colors.black),
                            ),
                            Text(
                              "2 Physical Card, and 1 Virtual Card",
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 12,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.more_horiz,
                            color: Colors.lightBlue[900],
                            size: 20,
                          ),
                          onPressed: () {},
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: Row(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20)),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey[200]!,
                                    blurRadius: 10.0,
                                    spreadRadius: 4.5)
                              ]),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: const Text(
                            "Physical Card",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 14,
                                color: Colors.blue),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20)),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey[200]!,
                                    blurRadius: 10.0,
                                    spreadRadius: 4.5)
                              ]),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Text(
                            "Virtual Card",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 14,
                                color: Colors.grey[500]),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                      margin: const EdgeInsets.symmetric(horizontal: 32),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color.fromRGBO(35, 60, 103, 1),
                      ),
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const <Widget>[
                              CircleAvatar(
                                radius: 16,
                                backgroundColor:
                                    Color.fromRGBO(50, 172, 121, 1),
                                child: Icon(
                                  Icons.check,
                                  color: Colors.white,
                                  size: 24,
                                ),
                              ),
                              Text(
                                "VISA",
                                style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    fontSize: 28,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 32,
                          ),
                          const Text(
                            "**** **** **** 4567",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                letterSpacing: 2.0),
                          ),
                          const SizedBox(
                            height: 32,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "CARD HOLDER",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.blue[100],
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: 2.0),
                                  ),
                                  Text(
                                    "Amain seif",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.grey[100],
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: 2.0),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "EXPIRES",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.blue[100],
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: 2.0),
                                  ),
                                  Text(
                                    "8/22",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.grey[100],
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: 2.0),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "CVV",
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.blue[100],
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: 2.0),
                                  ),
                                  Text(
                                    "842",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.grey[100],
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: 2.0),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      )),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: const Text(
                      "Card Settings",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: Colors.black),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey[100]!,
                              spreadRadius: 10.0,
                              blurRadius: 4.5)
                        ]),
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                    margin: const EdgeInsets.symmetric(horizontal: 32),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.wifi_tethering,
                              size: 20,
                              color: Colors.lightBlue[900],
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                              "Contactless Payment",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: Colors.blue),
                            )
                          ],
                        ),
                        Switch(
                          value: true,
                          activeColor: const Color.fromRGBO(50, 172, 121, 1),
                          onChanged: (_) {},
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey[100]!,
                              spreadRadius: 10.0,
                              blurRadius: 4.5)
                        ]),
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                    margin: const EdgeInsets.symmetric(horizontal: 32),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.credit_card,
                              color: Colors.lightBlue[900],
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            const Text(
                              "Online Payment",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                  color: Colors.blue),
                            )
                          ],
                        ),
                        Switch(
                          value: false,
                          activeColor: const Color.fromRGBO(50, 172, 121, 1),
                          onChanged: (_) {},
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey[100]!,
                              spreadRadius: 10.0,
                              blurRadius: 4.5)
                        ]),
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                    margin: const EdgeInsets.symmetric(horizontal: 32),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.mobile_screen_share,
                              color: Colors.lightBlue[900],
                            ),
                            const SizedBox(
                              width: 16,
                            ),
                            const Text(
                              "ATM Withdraws",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                  color: Colors.blue),
                            )
                          ],
                        ),
                        Switch(
                          value: true,
                          activeColor: const Color.fromRGBO(50, 172, 121, 1),
                          onChanged: (_) {},
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
        initialChildSize: 0.95,
        maxChildSize: 0.95,
      ),
    );
  }
}
