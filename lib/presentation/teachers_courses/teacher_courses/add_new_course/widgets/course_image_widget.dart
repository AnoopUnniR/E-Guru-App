
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CourseImageWidget extends StatelessWidget {
  const CourseImageWidget({
    super.key,
    required this.imageValueNotifier,
  });

  final ValueNotifier<XFile?> imageValueNotifier;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: imageValueNotifier,
      builder: (context, value, child) {
        return SizedBox(
          width: 200,
          height: 130,
          child: Stack(
            children: [
              Container(
                height: 130,
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.white,
                    image: value != null
                        ? kIsWeb
                            ? DecorationImage(
                                image: NetworkImage(value.path),
                              )
                            : DecorationImage(
                                image: FileImage(
                                  File(
                                    value.path,
                                  ),
                                ),
                                fit: BoxFit.cover,
                              )
                        : null),
              ),
              if (value == null)
                const Center(
                  child: Text(
                    "Add Image Here",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                )
            ],
          ),
        );
      },
    );
  }
}
