import 'package:eguru_app/constants/image_widget_function.dart';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';

class TeacherSingupImageWidget extends StatelessWidget {
  const TeacherSingupImageWidget({
    super.key,
    required this.width,
    required this.value,
  });

  final double width;
  final CroppedFile? value;
  @override
  Widget build(
    BuildContext context,
  ) {
    return Container(
      padding: value == null ? const EdgeInsets.all(10) : EdgeInsets.zero,
      height: width * 50,
      width: width * 50,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          alignment: Alignment.center,
          image: imageChooserFunction(value),
        ),
      ),
    );
  }
}
