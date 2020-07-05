/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */

import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/src/pages/bike/bike_details.dart';

List<String> places = [
  "Nuwakot",
  "Dhaulagiri",
  "Rara",
  "Muktinath",
  "Pashupatinath"
];

class AnimatedListOnePage extends StatefulWidget {
  static final String path = "lib/src/pages/animations/anim5.dart";
  @override
  _AnimatedListOnePageState createState() => _AnimatedListOnePageState();
}

class _AnimatedListOnePageState extends State<AnimatedListOnePage> {
  List<String> items;
  GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();

  @override
  void initState() {
    items = ["Kathmandu", "Bhaktapur", "Pokhara", "Mount Everest"];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated List One"),
      ),
      backgroundColor: Colors.grey.shade300,
      body: AnimatedList(
        key: _listKey,
        initialItemCount: items.length,
        itemBuilder: (context, index, anim) {
          return SlideTransition(
            position: Tween<Offset>(begin: Offset(1, 0), end: Offset.zero)
                .animate(anim),
            child: BorderedContainer(
              margin: const EdgeInsets.symmetric(
                vertical: 4.0,
                horizontal: 8.0,
              ),
              padding: const EdgeInsets.all(0),
              child: ListTile(
                title: Text(items[index]),
                trailing: IconButton(
                  icon: Icon(Icons.clear),
                  onPressed: () {
                    _listKey.currentState.removeItem(index,
                        (context, animation) {
                      String removedItem = items.removeAt(index);
                      return SizeTransition(
                        sizeFactor: animation,
                        axis: Axis.vertical,
                        child: BorderedContainer(
                            margin: const EdgeInsets.symmetric(
                              vertical: 4.0,
                              horizontal: 8.0,
                            ),
                            padding: const EdgeInsets.all(0),
                            child: ListTile(
                              title: Text(removedItem),
                            )),
                      );
                    });
                    setState(() {});
                  },
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          places.shuffle();
          items.insert(items.length, places[0]);
          _listKey.currentState.insertItem(items.length - 1);
          setState(() {});
        },
      ),
    );
  }
}
