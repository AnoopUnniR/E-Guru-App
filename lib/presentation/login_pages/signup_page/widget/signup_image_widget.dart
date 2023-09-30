import 'dart:io';
import 'package:flutter/foundation.dart';
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
          imageFile == null
              ? const CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage(
                    
                    "assets/profilepic.jpg",
                  ),
                )
              : kIsWeb
                  ? CircleAvatar(
                      radius: 100,
                      backgroundImage: NetworkImage(
                        imageFile!.path,
                      ),
                    )
                  : CircleAvatar(
                      radius: 100,
                      backgroundImage: FileImage(
                        File(imageFile!.path),
                      ),
                    ),
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
