
import 'package:eguru_app/application/admin_page_bloc/admin_requested_teachers-_details/admin_teacher_details_bloc.dart';
import 'package:eguru_app/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class VerifyTeacherButton extends StatelessWidget {
  const VerifyTeacherButton(
      {super.key, required this.teacherId, required this.verify});
  final int teacherId;
  final bool verify;
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width / 100;
    return SizedBox(
      width: width * 70,
      child: BlocBuilder<AdminTeacherDetailsBloc, AdminTeacherDetailsState>(
        builder: (context, state) {
          return ElevatedButton(
            onPressed: () async {
              if (verify) {
                BlocProvider.of<AdminTeacherDetailsBloc>(context).add(
                    AdminTeacherDetailsEvent.verified(teacherId: teacherId));
              } else {
                BlocProvider.of<AdminTeacherDetailsBloc>(context)
                    .add(AdminTeacherDetailsEvent.reject(teacherId: teacherId));
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor:
                  verify ? Colors.blue : const Color.fromARGB(255, 205, 38, 26),
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0),
              ),
            ),
            child: verify
                ? !state.isVerifyLoading
                    ? textWhite('Verify')
                    : const CircularProgressIndicator()
                : !state.isRejectLoading
                    ? textWhite("Reject")
                    : const CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
