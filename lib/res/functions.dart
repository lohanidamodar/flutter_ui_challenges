import 'package:flutter/material.dart';

PreferredSize customAppBar({required BuildContext context}) {
  return PreferredSize(
    preferredSize: const Size.fromHeight(100),
    child: SizedBox(
      height: kToolbarHeight + 20,
      child: ListTile(
        contentPadding: const EdgeInsets.all(0),
        trailing: Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10.0),
              )),
          padding: const EdgeInsets.fromLTRB(8.0, 30.0, 8.0, 8.0),
          child: Image.asset(
            'assets/icon/icon.png',
            width: 20,
          ),
        ),
        title: const Padding(
          padding: EdgeInsets.only(
            top: 35.0,
            left: 16.0,
          ),
        ),
      ),
    ),
  );
}
