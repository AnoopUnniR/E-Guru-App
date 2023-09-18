import 'package:eguru_app/application/admin_page_bloc/admin_requested_teachers-_details/admin_teacher_details_bloc.dart';
import 'package:eguru_app/application/admin_page_bloc/admin_teachers_list/admin_teachers_list_page_bloc.dart';
import 'package:eguru_app/domain/models/teachers_model/teachers_user_mode.dart';
import 'package:eguru_app/presentation/admin_pages/pages/constants/admin_appbar.dart';
import 'package:eguru_app/presentation/admin_pages/pages/teacher_request_pages/request_teacher_details/request_teacher_details_page.dart';
import 'package:eguru_app/presentation/admin_pages/pages/widgets/teacher_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AdminTeachersRequestListPage extends StatelessWidget {
  const AdminTeachersRequestListPage({
    super.key,
  });
  // final List<UserTeacherModel> teacherList;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 100;
    return Scaffold(
      appBar: adminAppbar(title: "Teacher Requests"),
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
                      BlocProvider.of<AdminTeacherDetailsBloc>(context).add(
                          AdminTeacherDetailsEvent.started(teacher: teacher));
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const AdminRequestTeachersDetailsPage(),
                        ),
                      );
                    },
                    child:
                        TeacherListTileWidget(width: width, teacher: teacher));
              },
            );
          },
        ),
      ),
    );
  }
}
