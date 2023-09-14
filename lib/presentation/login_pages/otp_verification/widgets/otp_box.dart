
import 'package:eguru_app/constants/constants.dart';
import 'package:flutter/material.dart';


class OtpInput extends StatelessWidget {
  final TextEditingController controller;
  final bool autoFocus;
  const OtpInput(this.controller, this.autoFocus, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: 50,
      child: TextField(
        autofocus: autoFocus,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        controller: controller,
        maxLength: 1,
        // cursorColor: Theme.of(context).primaryColor,
        decoration: inputDecorationTextfield('', false),
        onChanged: (value) {
          if (value.trim().isEmpty) {
            controller.clear();
          }
          else if(value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
      ),
    );
  }
}
