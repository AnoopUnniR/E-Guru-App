import 'package:eguru_app/application/admin_page_bloc/admin_teachers_details/admin_teacher_bloc.dart';
import 'package:eguru_app/application/admin_page_bloc/admin_teachers_list/admin_teachers_list_page_bloc.dart';
import 'package:eguru_app/domain/models/teachers_model/teachers_user_mode.dart';
import 'package:eguru_app/presentation/admin_pages/pages/constants/admin_appbar.dart';
import 'package:eguru_app/presentation/admin_pages/pages/teacher_details_pages/teacher_details_page.dart';
import 'package:eguru_app/presentation/admin_pages/pages/widgets/teacher_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AdminTeachersListPage extends StatelessWidget {
  const AdminTeachersListPage({
    super.key,
  });
  // final List<UserTeacherModel> teacherList;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 100;
    return Scaffold(
      appBar: adminAppbar(title: "Chapters"),
      body: SafeArea(
        child:
            BlocBuilder<AdminTeachersListPageBloc, AdminTeachersListPageState>(
          builder: (context, state) {
            return ListView.builder(
              itemCount: state.teacherList.length,
              itemBuilder: (context, index) {
                UserTeacherModel teacher = state.teacherList[index];
                return InkWell(
                  onTap: () {
                    BlocProvider.of<AdminTeacherBloc>(context).add(
                      AdminTeacherEvent.started(teacher: teacher),
                    );
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AdminTeachersDetailsPage(),
                      ),
                    );
                  },
                  child: TeacherListTileWidget(width: width, teacher: teacher),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
