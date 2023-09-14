

import 'package:eguru_app/constants/constants.dart';
import 'package:eguru_app/presentation/routing/screen_routing.dart';
import 'package:flutter/material.dart';


class AddNewChapterButton extends StatelessWidget {
  const AddNewChapterButton({
    super.key,
    required this.width,
    required this.courseId,
  });

  final double width;
  final int courseId;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width * 70,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, addNewChapterPageRoute,
              arguments: courseId);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 233, 9, 210),
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50.0),
          ),
        ),
        child:
            //  const CircularProgressIndicator()
            textWhite('Add New Chapter'),
      ),
    );
  }
}
