import 'package:eguru_app/application/signup_bloc/signup_bloc.dart';
import 'package:eguru_app/constants/constants.dart';
import 'package:eguru_app/constants/create_button.dart';
import 'package:eguru_app/domain/models/signup_model.dart';
import 'package:eguru_app/infrastructure/image_picker/pick_image.dart';
import 'package:eguru_app/presentation/login_pages/signup_page/widget/signup_image_widget.dart';
import 'package:eguru_app/presentation/login_pages/widgets/textformfield.dart';
import 'package:eguru_app/presentation/routing/screen_routing.dart';
import 'package:flutter/foundation.dart';
import 'package:eguru_app/constants/page_background_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController repasswordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final ProfileImage profileImageFunc = ProfileImage();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    CroppedFile? imageFile;
    return Container(
      decoration: scaffoldBackgroundDecoration(),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Container(
                constraints: const BoxConstraints(maxWidth: textFieldWidth),
                child: Form(
                  key: formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      sbh20,
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
                          kIsWeb
                              ? BlocProvider.of<SignupBloc>(context)
                                  .add(SignupImage(ImageSource.gallery))
                              : showDialog(
                                  context: context,
                                  builder: (context) =>
                                      imageChoiceWidget(context),
                                );
                        },
                        child: BlocBuilder<SignupBloc, SignupState>(
                          builder: (context, state) {
                            if (state is SignupImageLoading) {
                              imageFile = state.image;
                            }
                            return SignupImageWidget(imageFile: imageFile);
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
                        onChanged: (value) {},
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
                          bool isLoading = false;
                          if (state is SignupLoading) {
                            isLoading = true;
                          }
                          if (state is SignupAccepted) {
                            isLoading = false;
                          }
                          return CreateButtonWidget(
                            isLoading: isLoading,
                            function: () {
                              if (nameController.text.trim().isEmpty ||
                                  emailController.text.trim().isEmpty ||
                                  passwordController.text.trim().isEmpty ||
                                  repasswordController.text.trim().isEmpty) {
                                showCustomSnackbar(
                                    message: "Please Fill All Fields",
                                    context: context);
                                return;
                              }
                              if (passwordController.text !=
                                  repasswordController.text) {
                                showCustomSnackbar(
                                    message: "password does not match",
                                    context: context);
                                return;
                              }
                              SignUpCredentials signupCreds = SignUpCredentials(
                                  email: emailController.text.trim(),
                                  password: passwordController.text.trim(),
                                  rePassword: repasswordController.text.trim(),
                                  name: nameController.text.trim(),
                                  image: imageFile);
                              BlocProvider.of<SignupBloc>(context)
                                  .add(SignupRequestedEvent(signupCreds));
                            },
                            title: "Sign Up",
                          );
                        },
                      ),
                      sbh20,
                      SizedBox(
                        child: Column(
                          children: [
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
                          ],
                        ),
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
