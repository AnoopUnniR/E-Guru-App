//background decoration for screens
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

BoxDecoration scaffoldBackgroundDecoration() {
  if (kIsWeb) {
    return const BoxDecoration(color:  Color(0xFF040187));
  }
  return const BoxDecoration(
    // color: Colors.blue,
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomLeft,
      colors: [
        Color.fromARGB(149, 21, 15, 199),
        Color.fromARGB(146, 22, 18, 255),
        Color.fromARGB(149, 21, 15, 199),
      ],
    ),
  );
}