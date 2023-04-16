/// Author: Mausam Rayamajhi
/// profile: https://github.com/mausamRayamajhi

import 'package:flutter/material.dart';
import '../../util/constant.dart';

class CustomInputField extends StatelessWidget {
  final String? textHint;
  final TextInputType keyboardType;
  final bool showInputText;
  const CustomInputField({
    Key? key,
    this.textHint,
    this.showInputText = false,
    this.keyboardType = TextInputType.text,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
      obscureText: showInputText,
      keyboardType: keyboardType,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: primaryColor),
        ),
        hintText: textHint,
      ),
    );
  }
}
