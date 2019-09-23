import 'package:flutter_ui_challenges/core/presentation/widgets/rounded_bordered_container.dart';
import 'package:flutter_ui_challenges/features/auth/data/model/user.dart';
import 'package:flutter_ui_challenges/features/auth/data/model/user_repository.dart';
import 'package:flutter/material.dart';
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
                  Navigator.pushNamedAndRemoveUntil(context, 'home', ModalRoute.withName('home'));
                  Provider.of<UserRepository>(context).signOut();
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