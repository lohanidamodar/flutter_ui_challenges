import 'package:flutter/material.dart';

push(BuildContext context, Widget widget) {
  Navigator.push(context, MaterialPageRoute(builder: (_) => widget));
}

pop(BuildContext context) {
  return Navigator.pop(context);
}

Widget circleAvatar({
  Widget child,
  Color backgroundColor,
  double radius,
}) {
  return CircleAvatar(
    radius: radius ?? 35,
    backgroundColor: backgroundColor ?? Colors.amber[100],
    child: child,
  );
}

Widget columnTwoText(
  size,
  BuildContext context, {
  String firstText,
  String secondNumber,
}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        firstText,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: Theme.of(context).textTheme.button.fontSize,
        ),
      ),
      SizedBox(
        height: size.height * 0.01,
      ),
      Text(
        secondNumber,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: Theme.of(context).textTheme.button.fontSize,
        ),
      ),
    ],
  );
}

Widget stackListGames(
  Size size,
  BuildContext context, {
  String gameName,
  String gameDate,
  String gameImage,
}) {
  return Stack(
    children: [
      Container(
        height: size.height * 0.12,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.1),
          borderRadius: BorderRadius.circular(13),
        ),
        child: ListTile(
          leading: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.3),
              borderRadius: BorderRadius.circular(13),
            ),
            height: size.height * 0.1,
            width: size.width * 0.18,
            child: Image.asset(
              gameImage,
              fit: BoxFit.cover,
              height: size.height * 0.04,
            ),
          ),
          title: Text(
            gameName,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            gameDate,
            style: TextStyle(
              fontSize: Theme.of(context).textTheme.caption.fontSize,
              color: Colors.grey,
            ),
          ),
        ),
      ),
      Positioned(
        right: size.width * 0.019,
        top: 0,
        bottom: 0,
        child: circleAvatar(
          backgroundColor: Colors.pinkAccent.withOpacity(0.3),
          radius: 17,
          child: Image.asset(
            'assets/gameCenter/girl.png',
            fit: BoxFit.cover,
            height: size.height * 0.028,
          ),
        ),
      ),
      Positioned(
        top: 0,
        bottom: 0,
        right: size.width * 0.065,
        child: circleAvatar(
          backgroundColor: Colors.indigo.withOpacity(0.9),
          radius: 17,
          child: Image.asset(
            'assets/gameCenter/boy.png',
            fit: BoxFit.cover,
            height: size.height * 0.028,
          ),
        ),
      ),
      Positioned(
        top: 0,
        right: size.width * 0.11,
        bottom: 0,
        child: circleAvatar(
          backgroundColor: Colors.deepOrange.withOpacity(0.9),
          radius: 17,
          child: Image.asset(
            'assets/gameCenter/girl.png',
            fit: BoxFit.cover,
            height: size.height * 0.028,
          ),
        ),
      ),
    ],
  );
}
