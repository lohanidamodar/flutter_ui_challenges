import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/src/widgets/network_image.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../core/presentation/res/assets.dart';

const TextStyle boldText = TextStyle(
  fontWeight: FontWeight.bold,
);
class InvitationAuthPage extends StatefulWidget {
  static final String path = "lib/src/pages/invitation/inauth.dart";
  @override
  _InvitationAuthPageState createState() => _InvitationAuthPageState();
}

class _InvitationAuthPageState extends State<InvitationAuthPage> {
  bool? signupForm;
  @override
  void initState() { 
    super.initState();
    signupForm = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          FractionallySizedBox(
            heightFactor: 0.5,
            child: Container(
              color: Colors.pink,
            ),
          ),
          SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                const SizedBox(height: kToolbarHeight - 16.0),
                Container(
                  alignment: Alignment.topCenter,
                  height: (MediaQuery.of(context).size.height / 2) - 150,
                  child: PNetworkImage(
                    INVITE_ILLUSTRATION,
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(height: 20.0),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.pink,
                          offset: Offset(5, 5),
                          blurRadius: 10.0,
                        )
                      ]),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0),
                          ),
                        ),
                        child: ToggleButtons(
                          renderBorder: false,
                          selectedColor: Colors.pink,
                          fillColor: Colors.transparent,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text(
                                "Sign Up",
                                style: boldText,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Sign In",
                                style: boldText,
                              ),
                            ),
                          ],
                          isSelected: [signupForm!, !signupForm!],
                          onPressed: (index) {
                            setState(() {
                              signupForm = index == 0;
                            });
                          },
                        ),
                      ),
                      AnimatedSwitcher(
                        duration: Duration(milliseconds: 200,),
                        child: signupForm! ? SignUp() : SignIn(),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20.0),
                Text("Or connect with"),
                const SizedBox(height: 10.0),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                  ),
                  child: OutlineButton.icon(
                    padding: const EdgeInsets.all(16.0),
                    icon: Icon(FontAwesomeIcons.google,color: Colors.red,),
                    label: Text("Google"),
                    onPressed: () {},
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              contentPadding: const EdgeInsets.all(
                16.0,
              ),
              hintText: "enter your email",
            ),
          ),
          const SizedBox(height: 16.0),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "phone",
              contentPadding: const EdgeInsets.all(
                16.0,
              ),
              prefixText: "+977 ",
              prefixStyle: boldText.copyWith(color: Colors.black),
            ),
          ),
          const SizedBox(height: 16.0),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(
              horizontal: 32.0,
            ),
            child: RaisedButton(
              elevation: 0,
              highlightElevation: 0,
              textColor: Colors.white,
              color: Colors.pink,
              onPressed: (){},
              child: Text("Sign up"),
            ),
          ),
          const SizedBox(height: 10.0),
        ],
      ),
    );
  }
}

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              contentPadding: const EdgeInsets.all(
                16.0,
              ),
              hintText: "enter your email or phone",
            ),
          ),
          const SizedBox(height: 16.0),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "password",
              contentPadding: const EdgeInsets.all(
                16.0,
              ),
              prefixStyle: boldText.copyWith(color: Colors.black),
            ),
          ),
          const SizedBox(height: 16.0),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(
              horizontal: 32.0,
            ),
            child: RaisedButton(
              elevation: 0,
              highlightElevation: 0,
              textColor: Colors.white,
              onPressed: () => Navigator.pushNamed(context, 'home'),
              child: Text("Sign In"),
            ),
          ),
          const SizedBox(height: 10.0),
        ],
      ),
    );
  }
}
