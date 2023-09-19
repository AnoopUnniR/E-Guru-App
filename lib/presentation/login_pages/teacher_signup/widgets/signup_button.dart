import 'dart:io';

import 'package:eguru_app/application/profile_page/profile_page_bloc.dart';
import 'package:eguru_app/application/teachers_registration/teacher_registration_bloc.dart';
import 'package:eguru_app/constants/constants.dart';
import 'package:eguru_app/domain/models/teachers_model/teachers_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_cropper/image_cropper.dart';

class ApplyFormButton extends StatelessWidget {
  const ApplyFormButton({
    super.key,
    required this.width,
    required this.resume,
    required this.nameController,
    required this.phoneController,
    required this.adressController,
    required this.countryController,
    required this.educationController,
    required this.skillController,
    this.signupImage,
  });

  final double width;
  final File? resume;
  final TextEditingController nameController;
  final TextEditingController phoneController;
  final TextEditingController adressController;
  final TextEditingController countryController;
  final TextEditingController educationController;
  final TextEditingController skillController;
  final CroppedFile? signupImage;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TeacherRegistrationBloc(),
      child: BlocConsumer<TeacherRegistrationBloc, TeacherRegistrationState>(
        listener: (context, state) {
          if (state is TeacherRegistrationApplied) {
            BlocProvider.of<ProfilePageBloc>(context)
                .add(ProfilePageUpdateEvent());
            showCustomSnackbar(
                message:
                    "Your request to enrol as a teacher has been successfully applied. we will notify you when it is verifed",
                context: context);
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return SizedBox(
            width: width * 70,
            child: ElevatedButton(
              onPressed: () async {
                if (signupImage == null) {
                  showCustomSnackbar(
                      message: "please enter a profile picture",
                      context: context);
                  return;
                }
                if (resume == null) {
                  showCustomSnackbar(
                      message: "please add your resume ", context: context);
                  return;
                }
                if (nameController.text.trim() == '' ||
                    countryController.text.trim() == '' ||
                    phoneController.text.trim() == '' ||
                    skillController.text.trim() == '' ||
                    adressController.text.trim() == '') {
                  showCustomSnackbar(
                      message: "please fill all the fileds", context: context);
                  return;
                }
                TeacherApplyModel teacherApplyModel = TeacherApplyModel(
                    name: nameController.text,
                    mobileNumber: phoneController.text,
                    resume: resume!,
                    address: adressController.text,
                    country: countryController.text,
                    highestQualification: educationController.text,
                    skills: skillController.text,
                    image: signupImage!);
                BlocProvider.of<TeacherRegistrationBloc>(context).add(
                  TeachersRegistrationSubmittedEvent(
                      teacherApplyModel: teacherApplyModel),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 233, 9, 210),
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
              ),
              child: (state is TeacherRegistrationLoading)
                  ? const CircularProgressIndicator()
                  : const Text('Apply Form'),
            ),
          );
        },
      ),
    );
  }
}
