import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

abstract class Styles {
  static const TextStyle buttonText =
      TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold);
  static const TextStyle headerText = TextStyle(
      color: const Color(0xFF0D47A1),
      fontSize: 18,
      fontWeight: FontWeight.bold);
  static const TextStyle appBarText =
      TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold);
  static const TextStyle responseText = TextStyle(
    color: Colors.black,
    fontSize: 14,
  );
  static const TextStyle messageText = TextStyle(
    color: Colors.black,
    fontSize: 12,
  );
  static const TextStyle hintText = TextStyle(
    color: Colors.blueGrey,
    fontSize: 16,
  );

  static const Color primaryColor = Color(0xFF0D47A1);
  static const Color accentColor = Color(0xFFE65100);
  static const Color appBarColor = Colors.white;
}
