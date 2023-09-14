import 'package:eguru_app/constants/constants.dart';
import 'package:eguru_app/domain/models/teachers_model/teachers_user_mode.dart';
import 'package:flutter/material.dart';

class TeacherListTileWidget extends StatelessWidget {
  const TeacherListTileWidget({
    super.key,
    required this.width,
    required this.teacher,
  });

  final double width;
  final UserTeacherModel teacher;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(8),
        height: 70,
        width: width * 90,
        decoration: const BoxDecoration(),
        child: Row(children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(imageUrlConvert(teacher.image)),
          ),
          sbw20,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      teacher.name,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: width * 6),
                    ),
                    Text(
                      "ID : ${teacher.id}",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: width * 4),
                    ),
                  ],
                ),
                Text(
                  teacher.email,
                  style: TextStyle(
                    fontSize: width * 4,
                    color: Colors.black,
                  ),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
