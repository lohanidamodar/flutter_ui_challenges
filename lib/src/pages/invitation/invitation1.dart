import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/core/presentation/res/assets.dart';
import 'package:flutter_ui_challenges/core/presentation/res/colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InvitationPageOne extends StatelessWidget {
  static const String path = "lib/src/pages/invitation/invitation1.dart";
  final Color primary = const Color(0xffE20056);
  final Color border = const Color(0xffE1DDDE);
  final Color bg = const Color(0xfffefefe);
  final List<bool> toggleIsSelected = [true, false, false];

  InvitationPageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(90.0),
        child: Container(
          height: 90,
          padding: const EdgeInsets.only(top: 20.0),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: primary,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
              )),
          child: ListTile(
            leading: IconButton(
              color: Colors.white,
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () {},
            ),
            trailing: TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              onPressed: () {},
              child: const Text("Skip"),
            ),
            title: const Text(
              "Birthday Party",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(avatars[0]),
              ),
              title: Text(
                "Shakwat Shamim JD",
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                "New Delhi",
                style: TextStyle(
                  color: primary,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                border: Border.all(color: borderColor),
              ),
              child: Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                          height: 200.0,
                          color: primary.withOpacity(0.1),
                          padding: const EdgeInsets.all(16.0),
                          width: double.infinity,
                          child: Image.network(
                            cake,
                            fit: BoxFit.contain,
                          )),
                      Positioned(
                        right: 0,
                        top: 60.0,
                        child: MaterialButton(
                          elevation: 0,
                          textColor: Colors.white,
                          minWidth: 0,
                          padding: const EdgeInsets.symmetric(
                            vertical: 4.0,
                            horizontal: 10.0,
                          ),
                          color: primary,
                          onPressed: () {},
                          child: const Icon(Icons.keyboard_arrow_right),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: 60.0,
                        child: MaterialButton(
                          elevation: 0,
                          textColor: Colors.white,
                          minWidth: 0,
                          padding: const EdgeInsets.symmetric(
                            vertical: 4.0,
                            horizontal: 10.0,
                          ),
                          color: primary,
                          onPressed: () {},
                          child: const Icon(Icons.keyboard_arrow_left),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 32.0, vertical: 8.0),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.solidThumbsUp,
                          color: primary,
                        ),
                        const SizedBox(width: 5.0),
                        const Text("75631"),
                        const Spacer(),
                        Container(
                          height: 20.0,
                          width: 1.0,
                          color: Colors.grey,
                        ),
                        const Spacer(),
                        const Icon(FontAwesomeIcons.comment),
                        const SizedBox(width: 5.0),
                        const Text("213"),
                        const Spacer(),
                        Container(
                          height: 20.0,
                          width: 1.0,
                          color: Colors.grey,
                        ),
                        const Spacer(),
                        const Icon(FontAwesomeIcons.calendarXmark),
                        const Spacer(),
                        Container(
                          height: 20.0,
                          width: 1.0,
                          color: Colors.grey,
                        ),
                        const Spacer(),
                        const Icon(Icons.location_on),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Card(
                    elevation: 5.0,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 8.0),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget>[
                            Text("Birthday Party"),
                            Text("Event Name"),
                          ],
                        ),
                        const Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: const <Widget>[
                            Text("2019/3/4"),
                            Text("Event Date")
                          ],
                        ),
                      ]),
                    ),
                  ),
                  Card(
                    elevation: 5.0,
                    margin: const EdgeInsets.symmetric(
                        vertical: 8.0, horizontal: 16.0),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget>[
                            Text("New Delhi"),
                            Text("Venue"),
                          ],
                        ),
                        const Spacer(),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: const <Widget>[Text("14:33:00"), Text("Time")],
                        ),
                      ]),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                ],
              ),
            ),
            const SizedBox(height: 20.0),
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 50,
        child: Row(
          children: <Widget>[
            const SizedBox(width: 10.0),
            _buildButton("Accept", true),
            const Spacer(),
            _buildButton("Reject", false),
            const Spacer(),
            _buildButton("Maybe", false),
            const SizedBox(width: 10.0),
          ],
        ),
      ),
    );
  }

  Widget _buildButton(String title, bool active) {
    return InkWell(
      onTap: () {},
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          border: active
              ? Border(
                  top: BorderSide(
                    color: primary,
                    width: 2.0,
                  ),
                )
              : null,
        ),
        child: Text(
          title,
          style: TextStyle(
              color: active ? primary : Colors.grey.shade600,
              fontSize: 16.0,
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
