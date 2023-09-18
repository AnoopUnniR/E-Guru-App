import 'package:eguru_app/application/admin_page_bloc/admin_home/admin_home_bloc.dart';
import 'package:eguru_app/application/admin_page_bloc/admin_requested_teachers-_details/admin_teacher_details_bloc.dart';
import 'package:eguru_app/constants/constants.dart';
import 'package:eguru_app/presentation/admin_pages/pages/constants/admin_appbar.dart';
import 'package:eguru_app/presentation/admin_pages/pages/teacher_request_pages/request_teacher_details/widgets/verify_button.dart';
import 'package:eguru_app/presentation/admin_pages/pages/teacher_request_pages/teacher_details_column.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AdminRequestTeachersDetailsPage extends StatelessWidget {
  const AdminRequestTeachersDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AdminTeacherDetailsBloc, AdminTeacherDetailsState>(
      listener: (context, state) {
        if (state.isVerified) {
          showCustomSnackbar(
              message: "verified successfully", context: context);
          BlocProvider.of<AdminHomeBloc>(context)
              .add(const AdminHomeEvent.started());
          BlocProvider.of<AdminTeacherDetailsBloc>(context)
              .add(AdminTeacherDetailsEvent.started(teacher: state.teacher!));
          Navigator.of(context)
            ..pop()
            ..pop();
        }
        if (state.isRejected) {
          showCustomSnackbar(
              message: "rejected successfully", context: context);
          BlocProvider.of<AdminHomeBloc>(context)
              .add(const AdminHomeEvent.started());
          BlocProvider.of<AdminTeacherDetailsBloc>(context)
              .add(AdminTeacherDetailsEvent.started(teacher: state.teacher!));
          Navigator.of(context)
            ..pop()
            ..pop();
          // Navigator.pop(context);
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: adminAppbar(title: state.teacher!.name),
          body: SafeArea(
            child: SingleChildScrollView(
              child: state.teacher == null
                  ? const CircularProgressIndicator()
                  : Center(
                      child: Column(
                        children: [
                          sbh20,
                          Container(
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(
                                  imageUrlConvert(state.teacher!.image),
                                ),
                              ),
                            ),
                          ),
                          sbh20,
                          TeacherDetailsColumnWidget(
                              name: state.teacher!.name,
                              email: state.teacher!.email,
                              mobile: state.teacher!.mobileNumber,
                              country: state.teacher!.country,
                              qualification:
                                  state.teacher!.highestQualification,
                              status: state.teacher!.isPending,
                              resume: state.teacher!.resume,
                              lastLogin: state.teacher!.dateJoined),
                          sbh20,
                          VerifyTeacherButton(
                            teacherId: state.teacher!.id,
                            verify: true,
                          ),
                          sbh10,
                          VerifyTeacherButton(
                            teacherId: state.teacher!.id,
                            verify: false,
                          ),
                          sbh20
                        ],
                      ),
                    ),
            ),
          ),
        );
      },
    );
  }
}
