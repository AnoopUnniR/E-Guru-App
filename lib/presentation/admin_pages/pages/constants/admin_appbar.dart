import 'package:flutter/material.dart';

AppBar adminAppbar({required String title}) {
  return AppBar(
    centerTitle: true,
    backgroundColor: Colors.black,
    title: Text(
      title,
      style: const TextStyle(color: Colors.white),
    ),
  );
}
