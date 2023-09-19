import 'dart:io';

import 'package:eguru_app/constants/constants.dart';
import 'package:eguru_app/domain/models/user_model/user_model.dart';
import 'package:eguru_app/infrastructure/image_picker/pick_image.dart';
import 'package:eguru_app/presentation/login_pages/teacher_signup/widgets/signup_button.dart';
import 'package:eguru_app/presentation/login_pages/widgets/textformfield.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

File? resume;

class TeacherSignupPage extends StatelessWidget {
  TeacherSignupPage({super.key});
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController countryController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController educationController = TextEditingController();
  final TextEditingController adressController = TextEditingController();
  final TextEditingController pdfController = TextEditingController();
  final TextEditingController skillController = TextEditingController();
  final ProfileImage profileImageFunc = ProfileImage();
  final ValueNotifier<CroppedFile?> signupImage = ValueNotifier(null);

  @override
  Widget build(BuildContext context) {
    final UserModel userModel =
        ModalRoute.of(context)?.settings.arguments as UserModel;
    double width = MediaQuery.of(context).size.width / 100;
    nameController.text = userModel.name;
    emailController.text = userModel.email;
    return Container(
      decoration: scaffoldBackgroundDecoration(),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  sbh10,
                  const Text(
                    "Become a teacher",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  sbh10,
                  const Text('Please enter your details to'),
                  const Text("enroll as a teacher"),
                  sbh20,
                  InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => imageChoiceWidget(context),
                      );
                    },
                    child: ValueListenableBuilder(
                      valueListenable: signupImage,
                      builder: (context, value, child) {
                        return Container(
                          padding: value == null
                              ? const EdgeInsets.all(10)
                              : EdgeInsets.zero,
                          height: width * 50,
                          width: width * 50,
                          decoration: value == null
                              ? const BoxDecoration(
                                  image: DecorationImage(
                                    alignment: Alignment.center,
                                    image: AssetImage("assets/add.image.jpg"),
                                  ),
                                )
                              : BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.contain,
                                    image: FileImage(
                                      File(
                                        value.path,
                                      ),
                                    ),
                                  ),
                                ),
                        );
                      },
                    ),
                  ),
                  sbh20,
                  InputField(
                    label: "Name",
                    controller: nameController,
                    keyboardType: TextInputType.name,
                    enabled: false,
                  ),
                  sbh20,
                  InputField(
                    label: "Email",
                    controller: emailController,
                    enabled: false,
                  ),
                  sbh20,
                  InputField(
                    label: "Country",
                    controller: countryController,
                    keyboardType: TextInputType.name,
                  ),
                  sbh20,
                  InputField(
                    maxLength: 13,
                    label: "Phone Number",
                    controller: phoneController,
                    keyboardType: TextInputType.phone,
                  ),
                  sbh20,
                  InputField(
                    label: "Education Qualification",
                    controller: educationController,
                    keyboardType: TextInputType.name,
                    maxLines: null,
                  ),
                  sbh20,
                  InputField(
                    label: "Skills",
                    controller: skillController,
                    keyboardType: TextInputType.name,
                    maxLines: null,
                  ),
                  sbh20,
                  InputField(
                    label: "Address",
                    controller: adressController,
                    keyboardType: TextInputType.streetAddress,
                    maxLines: null,
                  ),
                  sbh20,
                  SizedBox(
                    width: width * 70,
                    child: Stack(
                      children: [
                        InputField(
                          maxLines: null,
                          label: "insert PDF here",
                          controller: pdfController,
                          keyboardType: TextInputType.streetAddress,
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 5, right: 10),
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                  Colors.white,
                                ),
                              ),
                              child: const Text(
                                "Insert",
                                style: TextStyle(color: Colors.black),
                              ),
                              onPressed: () async {
                                resume = await uploadPdf();
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  sbh40,
                  ApplyFormButton(
                    signupImage: signupImage.value,
                    width: width,
                    resume: resume,
                    nameController: nameController,
                    phoneController: phoneController,
                    adressController: adressController,
                    countryController: countryController,
                    educationController: educationController,
                    skillController: skillController,
                  ),
                  sbh20,
                  SizedBox(
                    width: width * 70,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 162, 11, 0),
                        padding: const EdgeInsets.symmetric(vertical: 20.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                      child: const Text('Cancel'),
                    ),
                  ),
                  sbh20
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future uploadPdf() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (result != null) {
      File file = File(result.files.single.path ?? "");
      pdfController.text = file.path.split("/").last;
      return file;
    }
  }

  AlertDialog imageChoiceWidget(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.blue,
      title: const Text("Upload Profile Picture"),
      content: SizedBox(
        height: 120,
        child: Column(children: [
          ListTile(
            leading: const Icon(Icons.photo_album),
            onTap: () async {
              Navigator.pop(context);
              signupImage.value =
                  await profileImageFunc.selectImage(ImageSource.gallery);
            },
            title: const Text("Select From Gallery"),
          ),
          ListTile(
            onTap: () async {
              Navigator.pop(context);
              signupImage.value =
                  await profileImageFunc.selectImage(ImageSource.camera);
            },
            leading: const Icon(Icons.camera_alt),
            title: const Text("Capture Live"),
          )
        ]),
      ),
    );
  }
}
