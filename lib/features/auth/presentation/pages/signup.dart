import 'package:flutter_ui_challenges/core/constants.dart';
import 'package:flutter_ui_challenges/core/presentation/res/text_styles.dart';
import 'package:flutter_ui_challenges/core/presentation/widgets/rounded_bordered_container.dart';
import 'package:flutter_ui_challenges/features/auth/data/model/user_repository.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../res/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextStyle style =
      TextStyle(fontFamily: 'Montserrat', fontSize: 20.0, color: Colors.black);
  TextEditingController _fullName;
  TextEditingController _email;
  TextEditingController _password;
  final _formKey = GlobalKey<FormState>();
  final _key = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _fullName = TextEditingController(text: "");
    _email = TextEditingController(text: "");
    _password = TextEditingController(text: "");
  }

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserRepository>(context);
    return Scaffold(
      key: _key,
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                const SizedBox(height: 60.0),
                Image.asset(
                  'assets/icon/icon.png',
                  height: 60,
                ),
                const SizedBox(height: 10.0),
                Text(
                  "Create Account",
                  style: Theme.of(context).textTheme.display1.copyWith(
                        color: Colors.grey[800],
                        fontSize: 20.0,
                      ),
                ),
                const SizedBox(height: 20.0),
                RoundedContainer(
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        key: Key(FULL_NAME_FIELD_KEY),
                        controller: _fullName,
                        validator: (value) =>
                            (value.isEmpty) ? "Please Enter full name" : null,
                        style: style,
                        decoration: InputDecoration(
                          labelText: "Full name",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      TextFormField(
                        key: Key(EMAIL_FIELD_KEY),
                        controller: _email,
                        validator: (value) =>
                            (value.isEmpty) ? "Please Enter Email" : null,
                        style: style,
                        decoration: InputDecoration(
                          labelText: "Email",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      TextFormField(
                        key: Key(PASSWORD_FIELD_KEY),
                        controller: _password,
                        obscureText: true,
                        validator: (value) =>
                            (value.isEmpty) ? "Please Enter Password" : null,
                        style: style,
                        decoration: InputDecoration(
                          labelText: "Password",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                        ),
                      ),
                      SizedBox(height: 20.0),
                      if (user.status == Status.Authenticating)
                        Center(child: CircularProgressIndicator()),
                      Text.rich(TextSpan(
                        children: [
                          TextSpan(text: 'By signing in you agree to our '),
                          WidgetSpan(
                            child: InkWell(
                              child: Text("Privacy Policy",style: TextStyle(
                                color: Theme.of(context).accentColor,
                                fontWeight: FontWeight.bold,
                              ),),
                              onTap: (){
                                launch(privacyUrl);
                              },
                            ),
                          ),
                        ]
                      )),
                      if (user.status != Status.Authenticating) ...[
                        Center(
                          child: MaterialButton(
                            textColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            key: Key(LOGIN_BUTTON_KEY),
                            elevation: 0,
                            color: Theme.of(context).primaryColor,
                            onPressed: () async {
                              if (_formKey.currentState.validate()) {
                                if (!await user.signUp(_fullName.text,
                                    _email.text, _password.text))
                                  _key.currentState.showSnackBar(
                                    SnackBar(
                                      key: Key(LOGIN_ERROR_SNACKBAR_KEY),
                                      content: Text("Something is wrong"),
                                    ),
                                  );
                                else
                                  Navigator.pop(context);
                              }
                            },
                            child: Text("Sign Up"),
                          ),
                        ),
                        const SizedBox(height: 10.0),
                        InkWell(
                          child: Text.rich(
                            TextSpan(children: [
                              TextSpan(text: "Already a member? "),
                              TextSpan(
                                text: "Login",
                                style: linkText,
                              )
                            ]),
                            textAlign: TextAlign.center,
                          ),
                          onTap: () => Navigator.pop(context),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "Or continue with",
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 5.0),
                        Center(
                          child: RaisedButton.icon(
                            elevation: 0,
                            color: Colors.red,
                            textColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            onPressed: () async {
                              if (!await user.signInWithGoogle())
                                _key.currentState.showSnackBar(SnackBar(
                                  content: Text("Something is wrong"),
                                ));
                            },
                            icon: Icon(FontAwesomeIcons.google, size: 16.0),
                            label: Text("Google"),
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }
}
