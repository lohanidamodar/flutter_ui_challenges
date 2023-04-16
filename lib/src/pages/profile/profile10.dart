/**
 * Author: Damodar Lohani
 * profile: https://github.com/lohanidamodar
  */

import 'package:flutter/material.dart';
import 'package:flutter_ui_challenges/core/presentation/res/assets.dart';

class ProfileTenPage extends StatelessWidget {
  static const String path = "lib/src/pages/profile/profile10.dart";

  const ProfileTenPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 250,
              child: Stack(
                children: [
                  SizedBox(
                    height: double.infinity,
                    width: double.infinity,
                    child: Image.network(
                      avatars[1],
                      fit: BoxFit.cover,
                    ),
                  ),
                  Align(
                    alignment: const Alignment(0, 0.8),
                    child: MaterialButton(
                      minWidth: 0,
                      elevation: 0.5,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      onPressed: () {},
                      child: const Icon(
                        Icons.camera_alt_outlined,
                        color: Colors.pink,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const TextField(
                    decoration: InputDecoration(
                      labelText: "Name",
                    ),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  const TextField(
                    decoration: InputDecoration(
                      labelText: "Profession",
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  InputDatePickerFormField(
                    firstDate: DateTime(DateTime.now().year - 5),
                    lastDate: DateTime(DateTime.now().year + 5),
                    initialDate: DateTime.now(),
                    fieldLabelText: "Date of Birth",
                  ),
                  const SizedBox(height: 10.0),
                  Text(
                    "Interests",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 5.0),
                  Wrap(
                    spacing: 10.0,
                    runSpacing: 10.0,
                    children: [
                      ChoiceChip(
                        label: const Text("Technology"),
                        onSelected: (val) {},
                        selected: true,
                      ),
                      ChoiceChip(
                        label: const Text("Coding"),
                        onSelected: (val) {},
                        selected: true,
                      ),
                      ChoiceChip(
                        label: const Text("Tutoring"),
                        onSelected: (val) {},
                        selected: false,
                      ),
                      ChoiceChip(
                        label: const Text("Video making"),
                        onSelected: (val) {},
                        selected: false,
                      ),
                      ChoiceChip(
                        label: const Text("Gaming"),
                        onSelected: (val) {},
                        selected: true,
                      ),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  MaterialButton(
                    color: Colors.pink,
                    onPressed: () {},
                    textColor: Colors.white,
                    padding: const EdgeInsets.all(16.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: const Text("Continue"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
