  import 'package:eguru_app/constants/constants.dart';
import 'package:flutter/material.dart';

SizedBox cancelButtonWidget(double width, BuildContext context) {
    return SizedBox(
                  width: width * 70,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 206, 43, 31),
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                    ),
                    child: textWhite('Cancel'),
                  ),
                );
  }