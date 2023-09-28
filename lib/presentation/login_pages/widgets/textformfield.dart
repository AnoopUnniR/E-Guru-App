import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final bool obscureText;
  final bool enabled;
  final int? maxLength;
  final int? maxLines;
  final int? minLines;
  final Function(PointerDownEvent)? onTapOutside;
  final String? Function(String?)? validator;
  final Function(String)? onChanged;
  final bool isError ;
  const InputField(
      {super.key,
      required this.label,
      required this.controller,
      this.keyboardType = TextInputType.name,
      this.obscureText = false,
      this.enabled = true,
      this.maxLength,
      this.minLines,
      this.maxLines = 1,
      this.onTapOutside,
      this.validator,this.isError=false,
      this.onChanged});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 100;
    return SizedBox(
      width: width * 70,
      child: TextFormField(
        onChanged: onChanged,
        validator: validator,
        enableSuggestions: true,
        obscuringCharacter: "*",
        cursorColor: Colors.white,
        onTapOutside: onTapOutside,
        minLines: minLines,
        maxLines: maxLines,
        maxLength: maxLength,
        enabled: enabled,
        style: const TextStyle(color: Colors.white),
        keyboardType: keyboardType,
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          error: !isError? null: const Text("format error"),
          // counterStyle: const TextStyle(fontSize: 0),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
            borderSide: BorderSide(color: Colors.white, width: 5),
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
            borderSide: BorderSide(color: Colors.white, width: 3),
          ),
          disabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
            borderSide: BorderSide(color: Colors.white, width: 3),
          ),
          hintText: label,
          labelStyle: const TextStyle(color: Colors.white54),
          contentPadding:
              const EdgeInsets.only(left: 50, top: 20, bottom: 20, right: 50),
          hintStyle: const TextStyle(color: Color.fromARGB(255, 199, 173, 173)),
        ),
      ),
    );
  }
}
