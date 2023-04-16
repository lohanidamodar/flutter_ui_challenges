import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/core/presentation/res/assets.dart';
import 'package:flutter_ui_challenges/src/widgets/network_image.dart';

const Color primary = Color(0xffE20056);
const TextStyle whiteBoldText = TextStyle(
  fontWeight: FontWeight.bold,
  color: Colors.white,
);
const TextStyle whiteText = TextStyle(
  color: Colors.white,
);
const TextStyle primaryText = TextStyle(
  color: primary,
);

class InvitationLandingPage extends StatelessWidget {
  static const String path = "lib/src/pages/invitation/inlanding.dart";

  const InvitationLandingPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          const SizedBox(height: kToolbarHeight),
          Text(
            "Invitations",
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          const Text.rich(
            TextSpan(children: [
              TextSpan(text: "A smarter way to hold "),
              TextSpan(text: "events", style: primaryText),
            ]),
          ),
          const SizedBox(height: 20.0),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.pink,
                borderRadius:
                    BorderRadius.only(topRight: Radius.circular(60.0)),
              ),
              child: Column(
                children: <Widget>[
                  const Expanded(
                      child: Center(child: PNetworkImage(inviteIllustration))),
                  const SizedBox(height: 20.0),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        foregroundColor: Colors.pink,
                        backgroundColor: Colors.white,
                      ),
                      child: const Text("Create an Account"),
                      onPressed: () => Navigator.pushNamed(context, 'auth'),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 8.0),
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        elevation: 0,
                        side: const BorderSide(color: Colors.white),
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.white,
                      ),
                      child: const Text("Sign in with Google"),
                      onPressed: () => Navigator.pushNamed(context, 'auth'),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Text.rich(
                    TextSpan(children: [
                      const TextSpan(text: "Already have an account? "),
                      WidgetSpan(
                          child: GestureDetector(
                        onTap: () {},
                        child: const Text(
                          "Sign in",
                          style: whiteBoldText,
                        ),
                      ))
                    ]),
                    style: whiteText,
                  ),
                  const SizedBox(height: 30.0),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
