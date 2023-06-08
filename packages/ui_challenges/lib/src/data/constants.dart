import '../res/assets.dart';
import 'models/developer.dart';

const String githubRepo =
    "https://github.com/lohanidamodar/flutter_ui_challenges";
const String youtubeChannel = "https://youtube.com/c/reactbits";

const List<Developer> developers = [
  Developer(
    name: "Damodar Lohani",
    profession: "Full Stack Developer",
    address: "Kathmandu, Nepal",
    github: "https://github.com/lohanidamodar",
    imageUrl: devDamodar,
  ),
  Developer(
    name: "Sudip Thapa",
    profession: "Flutter & React Developer",
    address: "Kathmandu, Nepal",
    github: "https://github.com/sudeepthapa",
    imageUrl: devSudip,
  ),
  Developer(
    name: "Arpana Dulal",
    profession: "Flutter Developer",
    address: "Kathmandu, Nepal",
    github: "https://github.com/ambikadulal",
    imageUrl: devArpana,
  ),
];
