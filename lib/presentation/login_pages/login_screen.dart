import 'package:eguru_app/application/login_bloc/login_bloc.dart';
import 'package:eguru_app/constants/constants.dart';
import 'package:eguru_app/infrastructure/login/login_implementation.dart';
import 'package:eguru_app/infrastructure/user_data/get_user_data.dart';
import 'package:eguru_app/presentation/admin_pages/admin_home_page.dart';
import 'package:eguru_app/presentation/login_pages/widgets/textformfield.dart';
import 'package:eguru_app/presentation/routing/screen_routing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 100;
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => LoginRepository(),
        ),
        RepositoryProvider(
          create: (context) => UserDataRepository(),
        )
      ],
      child: BlocProvider(
        create: (context) => LoginBloc(
            loginRepository: RepositoryProvider.of<LoginRepository>(context),
            userDataRepository:
                RepositoryProvider.of<UserDataRepository>(context)),
        child: Container(
          decoration: scaffoldBackgroundDecoration(),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SafeArea(
              child: Center(
                child: SingleChildScrollView(
                  child: BlocConsumer<LoginBloc, LoginState>(
                    listener: (context, state) {
                      if (state is LoginLoading) {
                        // print("loadding");
                      }
                      if (state is LoginCompleteAsAdmin) {
                        FocusScope.of(context).unfocus();
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AdminHomePage(),
                          ),
                        );
                      }
                      if (state is LoginCompleteAsStudent) {
                        FocusScope.of(context).unfocus();
                        Navigator.pushReplacementNamed(context, mainPageRoute,
                            arguments: state.userModel);
                      }
                      if (state is LoginCompleteAsTeacher) {
                        FocusScope.of(context).unfocus();
                        Navigator.pushReplacementNamed(context, mainPageRoute,
                            arguments: state.teacherModel);
                      }
                      if (state is LoginRejected) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                                "Error occured during signing in . Try again after checking the login credentials , ${state.error}"),
                          ),
                        );
                      }
                    },
                    builder: (context, state) {
                      return Container(
                        constraints: const BoxConstraints(maxWidth: textFieldWidth),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // CircleAvatar(radius: width*20),
                            const Text(
                              "Welcome",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 20),
                            ),
                            sbh10,
                            textWhite('please Login into your existing'),
                            textWhite("account"),
                            const SizedBox(
                              height: 120,
                            ),
                            InputField(
                                label: "Email", controller: emailController),
                            sbh20,
                            InputField(
                              label: "Password",
                              controller: passwordController,
                              obscureText: true,
                            ),
                            sbh40,
                            LoginButton(
                                width: width,
                                emailController: emailController,
                                passwordController: passwordController),
                            sbh20,
                            forgotPasswordButton(context)
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget forgotPasswordButton(
    BuildContext context,
  ) {
    return SizedBox(
      child: Column(children: [
        textWhite('Forgot your password?'),
        TextButton(
          style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap),
          onPressed: () {},
          child: const Text(
            "Click here",
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
        ),
        sbh20,
        textWhite('New User?'),
        TextButton(
          style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap),
          onPressed: () {
            Navigator.pushNamed(context, signUpPageRoute);
          },
          child: const Text(
            "Sign Up Here",
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
        )
      ]),
    );
  }
}

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
    required this.width,
    required this.emailController,
    required this.passwordController,
  });

  final double width;
  final TextEditingController emailController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width * 70,
      child: BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          return ElevatedButton(
            onPressed: () async {
              if (emailController.text.isNotEmpty ||
                  passwordController.text.trim().isNotEmpty) {
                BlocProvider.of<LoginBloc>(context).add(
                  LoginRequestedEvent(
                    email: emailController.text.trim(),
                    password: passwordController.text.trim(),
                  ),
                );
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 233, 9, 210),
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0),
              ),
            ),
            child: state is! LoginLoadingState
                ? textWhite('Login')
                : const CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
