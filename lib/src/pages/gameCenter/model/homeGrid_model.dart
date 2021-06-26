import 'package:flutter/material.dart';

class GridChooseModel {
  final String nameString;
  final Image image;

  GridChooseModel({
    this.nameString,
    this.image,
  });
}

List<GridChooseModel> getGridChooseModel = [
  GridChooseModel(
    nameString: "Racing",
    image: Image.asset("assets/gameCenter/car.png"),
  ),
  GridChooseModel(
    nameString: "Puzzle",
    image: Image.asset("assets/gameCenter/dice.png"),
  ),
  GridChooseModel(
    nameString: "Sport",
    image: Image.asset("assets/gameCenter/basketball.png"),
  ),
  GridChooseModel(
    nameString: "Strategy",
    image: Image.asset("assets/gameCenter/crown.png"),
  ),
  GridChooseModel(
    nameString: "Board",
    image: Image.asset("assets/gameCenter/board.png"),
  ),
  GridChooseModel(
    nameString: "Simulation",
    image: Image.asset("assets/gameCenter/simulation.png"),
  ),
];
