import 'package:flutter/material.dart';

class LevelsWidget extends StatelessWidget {
  LevelsWidget({super.key, required this.callback});
  final Function(String) callback;

  final List<String> _values = ['Easy', 'Medium', 'Hard'];

  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    String selectedValue = '';

    double width = MediaQuery.of(context).size.width / 100;
    return SizedBox(
      width: width * 70,
      child: DropdownButtonFormField<String>(
        dropdownColor: Colors.blue[900],
        style: const TextStyle(color: Colors.white),
        decoration: const InputDecoration(
          labelStyle: TextStyle(color: Colors.white),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
            borderSide: BorderSide(color: Colors.white, width: 5),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
            borderSide: BorderSide(color: Colors.white, width: 3),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
            borderSide: BorderSide(color: Colors.white, width: 3),
          ),
          hintText: "Level",
          contentPadding:
              EdgeInsets.only(left: 50, top: 20, bottom: 20, right: 50),
          hintStyle: TextStyle(color: Colors.white),
        ),
        value: selectedValue.isEmpty ? null : selectedValue,
        onChanged: (String? newValue) {
          callback(newValue!);
        },
        items: [
          ..._values.map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ],
      ),
    );
  }
}
