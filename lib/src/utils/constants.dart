import 'package:flutter_ui_challenges/src/pages/profile/profile6.dart';
import 'package:flutter_ui_challenges/src/utils/models/developer.dart';

const String githubRepo =
    "https://github.com/lohanidamodar/flutter_ui_challenges";
const String youtubeChannel = "https://youtube.com/c/reactbits";

const List<Developer> DEVELOPERS = [
  Developer(
      name: "Damodar Lohani",
      profession: "Full Stack Developer",
      address: "Kathmandu, Nepal",
      github: "https://github.com/lohanidamodar",
      imageUrl:
          "https://scontent.fktm9-1.fna.fbcdn.net/v/t1.0-9/31100542_1632322396887389_9054658341221028193_n.jpg?_nc_cat=107&_nc_oc=AQl0mNRAFBX9BH4s0ugG81-so8oU4JTKLcfOiFeC9EjB0CMtKHKX7lVOw7cKBAwFuwY&_nc_ht=scontent.fktm9-1.fna&oh=2aab16e2ca1e90585c31201cd153061a&oe=5DAC6365"),
  Developer(
      name: "Sidhartha Joshi",
      profession: "Flutter Developer",
      address: "Kathmandu, Nepal",
      github: "https://github.com/cimplesid",
      imageUrl:
          "https://scontent.fktm9-1.fna.fbcdn.net/v/t1.0-1/48398066_683680278695428_3349519203148234752_o.jpg?_nc_cat=102&_nc_oc=AQnu94xPppLqV5Oim60M33MOShmqliFpt2F6qv49xEmPwJuBOrlo4sXHSjovFRpfRS4&_nc_ht=scontent.fktm9-1.fna&oh=5afbeece6d01f6d9494daeaf8ab747cb&oe=5DBAB9A3"),
  Developer(
      name: "Sudip Thapa",
      profession: "Flutter & React Developer",
      address: "Kathmandu, Nepal",
      github: "https://github.com/sudeepthapa",
      imageUrl: 
          "https://scontent.fktm8-1.fna.fbcdn.net/v/t1.0-1/p160x160/30709136_2083256138584985_5657892009363185993_n.jpg?_nc_cat=108&_nc_oc=AQnXYXC2h900nUhKZFyxMm_7-6HPUeeA8BWs-EK7XmtbzHyCLAS9phc3KQsvxQVZNmQ&_nc_ht=scontent.fktm8-1.fna&oh=b7ac0485b8f6e26b5514e49c71e25665&oe=5DE3F055"),
];

final DEV sid = DEV(
  firstName: 'Cimple',
  lastName: 'Sid',
  avatar: 'assets/img/avatar.png',
  backdropPhoto: 'assets/img/backdrop.png',
  location: 'Mahendranagar, Nepal',
  biography: 'Siddhartha  Joshi is a Flutter dev  '
      'Lorem Ipsum is simply dummy text of the printing and typesetting industry.  '
      'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.',
  videos: <Video>[
    Video(
      title: 'WIFI hacking part 1',
      thumbnail: 'assets/img/video1_thumb.png',
      url: 'https://www.youtube.com/watch?v=06qoTsKYWKE',
    ),
    Video(
      title: 'WIFI hacking part 2',
      thumbnail: 'assets/img/video2_thumb.png',
      url: 'https://www.youtube.com/watch?v=3XG4c5_mGCM',
    ),
    Video(
      title: 'WIFI hacking part 3',
      thumbnail: 'assets/img/video3_thumb.png',
      url: 'https://www.youtube.com/watch?v=C29QstsxWQE',
    ),
    Video(
      title: 'Find facebook users location',
      thumbnail: 'assets/img/video4_thumb.png',
      url: 'https://www.youtube.com/watch?v=J9zhKtL_gH0',
    ),
  ],
);
