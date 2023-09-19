
import 'package:eguru_app/application/login_bloc/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



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
                ? const Text('Login')
                : const CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
