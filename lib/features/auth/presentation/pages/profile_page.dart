import 'package:flutter_ui_challenges/core/presentation/widgets/rounded_bordered_container.dart';
import 'package:flutter_ui_challenges/features/auth/data/model/user.dart';
import 'package:flutter_ui_challenges/features/auth/data/model/user_repository.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Consumer<User>(builder: (context, user, _) {
          if (Provider.of<UserRepository>(context).user == null)
            return LoginInfo();
          return ProfileInfo(
            user: user,
          );
        }),
      ),
    );
  }
}

class ProfileInfo extends StatelessWidget {
  final User user;
  const ProfileInfo({
    Key key,
    @required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        RoundedContainer(
          width: double.infinity,
          child: Row(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  if (user.name.isNotEmpty) ...[
                    Text(
                      user.name,
                      style: Theme.of(context)
                          .textTheme
                          .title
                          .copyWith(fontSize: 20.0),
                    ),
                    const SizedBox(height: 5.0),
                  ],
                  Text(
                    user.email,
                    style: Theme.of(context)
                        .textTheme
                        .title
                        .copyWith(fontSize: 18.0),
                  ),
                ],
              ),
              Spacer(),
              IconButton(
                color: Theme.of(context).accentColor,
                icon: Icon(Icons.exit_to_app),
                onPressed: () {
                  Provider.of<UserRepository>(context).signOut();
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
        const SizedBox(height: 10.0),
        RoundedContainer(
          child: ListTile(
            title: Text(
              "${user.favorites.length}",
              style: Theme.of(context).textTheme.title.copyWith(
                    fontSize: 30.0,
                  ),
              textAlign: TextAlign.center,
            ),
            subtitle: Text(
              "Favorite UIs",
              textAlign: TextAlign.center,
            ),
          ),
        )
      ],
    );
  }
}

class LoginInfo extends StatelessWidget {
  const LoginInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          width: double.infinity,
          child: RaisedButton(
            textColor: Colors.white,
            color: Theme.of(context).accentColor,
            child: Text("Login now"),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            onPressed: () =>
                Navigator.pushReplacementNamed(context, 'auth_home'),
          ),
        ),
        const SizedBox(height: 20.0),
        Text(
          "Why login?",
          style: Theme.of(context).textTheme.title,
        ),
        const SizedBox(height: 5.0),
        Text("Logging in provides following features"),
        const SizedBox(height: 10.0),
        RoundedContainer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(children: [
                Icon(
                  FontAwesomeIcons.solidCircle,
                  size: 14.0,
                ),
                const SizedBox(width: 10.0),
                Text(
                  "Save list of your favorite UIs",
                  style: Theme.of(context).textTheme.title.copyWith(
                        fontWeight: FontWeight.normal,
                        fontSize: 16.0,
                      ),
                ),
              ]),
              const SizedBox(height: 16.0),
              Row(children: [
                Icon(
                  FontAwesomeIcons.solidCircle,
                  size: 14.0,
                ),
                const SizedBox(width: 10.0),
                Text(
                  "Request a ui design",
                  style: Theme.of(context).textTheme.title.copyWith(
                        fontWeight: FontWeight.normal,
                        fontSize: 16.0,
                      ),
                ),
              ]),
              const SizedBox(height: 16.0),
              Row(children: [
                Icon(
                  FontAwesomeIcons.solidCircle,
                  size: 14.0,
                ),
                const SizedBox(width: 10.0),
                Text(
                  "Provide us feedback",
                  style: Theme.of(context).textTheme.title.copyWith(
                        fontWeight: FontWeight.normal,
                        fontSize: 16.0,
                      ),
                ),
              ]),
            ],
          ),
        )
      ],
    );
  }
}
