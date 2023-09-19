import 'dart:io';

import 'package:eguru_app/application/signup_bloc/signup_bloc.dart';
import 'package:eguru_app/constants/constants.dart';
import 'package:eguru_app/domain/models/signup_model.dart';
import 'package:eguru_app/infrastructure/image_picker/pick_image.dart';
import 'package:eguru_app/presentation/login_pages/widgets/textformfield.dart';
import 'package:eguru_app/presentation/routing/screen_routing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController repasswordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final ProfileImage profileImageFunc = ProfileImage();
  @override
  Widget build(BuildContext context) {
    CroppedFile? imageFile;
    double width = MediaQuery.of(context).size.width / 100;
    return Container(
      decoration: scaffoldBackgroundDecoration(),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Container(
                  constraints: const BoxConstraints(maxWidth: textFieldWidth),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "Create an Account",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      sbh10,
                      const Text('Please enter your details to'),
                      const Text("create a new account."),
                      sbh10,
                      InkWell(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => imageChoiceWidget(context),
                          );
                        },
                        child: BlocBuilder<SignupBloc, SignupState>(
                          builder: (context, state) {
                            if (state is SignupImageLoading) {
                              imageFile = state.image;
                            }
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
                          },
                        ),
                      ),
                      sbh10,
                      InputField(label: "Name", controller: nameController),
                      sbh20,
                      InputField(label: "Email", controller: emailController),
                      sbh20,
                      InputField(
                        label: "Password",
                        controller: passwordController,
                        obscureText: true,
                      ),
                      sbh20,
                      InputField(
                        label: "Reenter Password",
                        controller: repasswordController,
                        obscureText: true,
                      ),
                      sbh20,
                      BlocConsumer<SignupBloc, SignupState>(
                        listener: (context, state) {
                          if (state is SignupAccepted) {
                            WidgetsBinding.instance
                                .addPostFrameCallback((timeStamp) {
                              Navigator.pushReplacementNamed(
                                  context, otpVerificationPageRoute,
                                  arguments: state.signupModel);
                            });
                          }
                          if (state is SignupRejected) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(state.error),
                              ),
                            );
                          }
                        },
                        builder: (context, state) {
                          return SizedBox(
                            width: width * 70,
                            child: ElevatedButton(
                              onPressed: () {
                                if (passwordController.text !=
                                    repasswordController.text) {
                                  showCustomSnackbar(
                                      message: "password does not match",
                                      context: context);
                                  return;
                                }
                                SignUpCredentials signupCreds =
                                    SignUpCredentials(
                                        email: emailController.text.trim(),
                                        password:
                                            passwordController.text.trim(),
                                        rePassword:
                                            repasswordController.text.trim(),
                                        name: nameController.text.trim(),
                                        image: imageFile);
                                BlocProvider.of<SignupBloc>(context)
                                    .add(SignupRequestedEvent(signupCreds));
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 233, 9, 210),
                                padding:
                                    const EdgeInsets.symmetric(vertical: 20.0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50.0),
                                ),
                              ),
                              child: (state is SignupLoading)
                                  ? const CircularProgressIndicator()
                                  : const Text('Sign Up'),
                            ),
                          );
                        },
                      ),
                      sbh20,
                      SizedBox(
                        child: Column(children: [
                          const Text('Already have an account?'),
                          TextButton(
                            style: TextButton.styleFrom(
                                padding: EdgeInsets.zero,
                                tapTargetSize:
                                    MaterialTapTargetSize.shrinkWrap),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text(
                              "Login Here",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ]),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
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
              // imageFile = await profileImage.selectImage(ImageSource.gallery);
              BlocProvider.of<SignupBloc>(context)
                  .add(SignupImage(ImageSource.gallery));
            },
            title: const Text("Select From Gallery"),
          ),
          ListTile(
            onTap: () async {
              Navigator.pop(context);
              // imageFile = await profileImageFunc.selectImage(ImageSource.camera);
              BlocProvider.of<SignupBloc>(context)
                  .add(SignupImage(ImageSource.camera));
            },
            leading: const Icon(Icons.camera_alt),
            title: const Text("Capture Live"),
          )
        ]),
      ),
    );
  }
}
