import 'package:eguru_app/constants/image_widget_function.dart';
import 'package:flutter/material.dart';

import 'package:image_cropper/image_cropper.dart';

class SignupImageWidget extends StatelessWidget {
  const SignupImageWidget({
    super.key,
    required this.imageFile,
  });

  final CroppedFile? imageFile;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 200,
      child: Stack(
        children: [
          CircleAvatar(
              radius: 100, backgroundImage: imageChooserFunction(imageFile)),
          const Align(
            alignment: Alignment.bottomRight,
            child: SizedBox(
              height: 50,
              width: 50,
              child: Icon(
                Icons.add_a_photo_outlined,
                color: Color.fromARGB(255, 233, 9, 210),
                size: 40,
              ),
            ),
          )
        ],
      ),
    );
  }
}
