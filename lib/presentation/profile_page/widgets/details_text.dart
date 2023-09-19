import 'package:eguru_app/constants/constants.dart';

import 'package:flutter/material.dart';

class TextDetailsWidget extends StatelessWidget {
  const TextDetailsWidget({super.key,required this.data,required this.head});
  final String data;
  final String head;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(head),
        sbw10,
        const Text(":"),
        sbw10,
        Text(
          data,
          style: const TextStyle(color: Colors.white, fontSize: 20),
        ),
      ],
    );
  }
}
