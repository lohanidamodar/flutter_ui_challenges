import 'package:animator/animator.dart';
/**
 * Author: Damodar Lohani  
 * profile: https://github.com/lohanidamodar
  */
import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/core/presentation/res/assets.dart';

class LoginNinePage extends StatelessWidget {
  static final String path = "lib/src/pages/login/login9.dart";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Stack(
              fit: StackFit.expand,
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(images[0]),
                      fit: BoxFit.cover,
                    ),
                  ),
                  foregroundDecoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.7),
                  ),
                ),
                if (MediaQuery.of(context).viewInsets == EdgeInsets.zero)
                  Padding(
                    padding: const EdgeInsets.only(top: kToolbarHeight),
                    child: Text(
                      "Beautiful App",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                Animator<double>(
                  triggerOnInit: true,
                  curve: Curves.easeIn,
                  tween: Tween<double>(begin: -1, end: 0),
                  builder: (context, state, child) {
                    return FractionalTranslation(
                      translation: Offset(state.value,0),
                      child: child,
                    );
                  },
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: ListView(
                      physics:
                          MediaQuery.of(context).viewInsets == EdgeInsets.zero
                              ? NeverScrollableScrollPhysics()
                              : null,
                      padding: const EdgeInsets.all(32.0),
                      shrinkWrap: true,
                      children: [
                        const SizedBox(height: kToolbarHeight),
                        Text(
                          "Namaste!",
                          style: Theme.of(context)
                              .textTheme
                              .headline4!
                              .copyWith(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 10.0),
                        Text(
                          "Welcome to this awesome app. We are so happy that you are using our app.",
                          style: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 16.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 20.0),
                        TextField(
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 16.0, horizontal: 32.0),
                            suffixIcon: Icon(
                              Icons.person,
                              color: Colors.blueGrey,
                            ),
                            hintText: "Username",
                            hintStyle: TextStyle(color: Colors.blueGrey),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blueGrey),
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10.0),
                        TextField(
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 16.0, horizontal: 32.0),
                            suffixIcon: Icon(
                              Icons.lock,
                              color: Colors.blueGrey,
                            ),
                            hintText: "Password",
                            hintStyle: TextStyle(color: Colors.blueGrey),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blueGrey),
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        FlatButton(
                          textColor: Colors.white,
                          child: Text("Create new account"),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          if (MediaQuery.of(context).viewInsets == EdgeInsets.zero)
            RaisedButton(
              padding: const EdgeInsets.all(32.0),
              elevation: 0,
              textColor: Colors.white,
              color: Colors.deepOrange,
              child: Text("Continue".toUpperCase()),
              onPressed: () {},
            )
        ],
      ),
    );
  }
}
