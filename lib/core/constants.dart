import 'package:flutter_ui_challenges/core/presentation/res/assets.dart';

import 'data/models/developer.dart';

const String githubRepo =
    "https://github.com/lohanidamodar/flutter_ui_challenges";
const String youtubeChannel = "https://youtube.com/c/reactbits";

const List<Developer> DEVELOPERS = [
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
    name: "Sidhartha Joshi",
    profession: "Flutter Developer",
    address: "Kathmandu, Nepal",
    github: "https://github.com/cimplesid",
    imageUrl: devSid,
  ),
];

const String privacyUrl = "https://popupbits.com/contact/flutter-ui-challenges-privacy-policy/";