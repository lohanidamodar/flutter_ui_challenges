import 'package:flutter/material.dart';

const TextStyle blackText = TextStyle(
  color: Colors.black,
);

const TextStyle buttonText = TextStyle(fontSize: 16.0);
const TextStyle linkText = TextStyle(
  fontSize: 16.0,
  fontWeight: FontWeight.bold,
  color: Colors.indigo,
);

final TextStyle shadedTitle = TextStyle(
    fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.grey.shade600);

final TextStyle messageStyle = shadedTitle.copyWith();

final TextStyle correctMessageStyle = messageStyle.copyWith(
  color: Colors.green,
);

final TextStyle incorrectMessageStyle = messageStyle.copyWith(
  color: Colors.red,
);
