import 'dart:async';


import 'package:eguru_app/application/authentication_bloc/authentication_bloc.dart';
import 'package:eguru_app/constants/constants.dart';
import 'package:eguru_app/presentation/admin_pages/admin_home_page.dart';
import 'package:eguru_app/presentation/routing/screen_routing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      decoration: scaffoldBackgroundDecoration(),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: BlocConsumer<AuthenticationBloc, AuthenticationState>(
          listener: (context, state) {
            if (state is AutheticationFailedNoInternet) {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  backgroundColor: Colors.blue,
                  title: const Text("No internet Access"),
                  content:
                      const Text("Please check your connection annd try again"),
                  actions: [
                    ElevatedButton(
                      child: const Text("Reload"),
                      onPressed: () {
                        Navigator.pop(context);
                        BlocProvider.of<AuthenticationBloc>(context)
                            .add(AuthenticationCheckEvent());
                      },
                    ),
                  ],
                ),
              );
            }
            if (state is AuthenticationAccessAcceptedAsAdmin) {
              FocusScope.of(context).unfocus();
              Timer(const Duration(seconds: 5), () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AdminHomePage(),
                  ),
                );
              });
            }
            if (state is AuthenticationAccessAcceptedAsStudent) {
              Timer(const Duration(seconds: 5), () {
                Navigator.pushReplacementNamed(context, mainPageRoute,
                    arguments: state.userModel);
              });

              return;
            }
            if (state is AuthenticationAccessAcceptedAsTeacher) {
              Timer(const Duration(seconds: 5), () {
                Navigator.pushReplacementNamed(context, mainPageRoute,
                    arguments: state.userTeacherModel);
              });

              return;
            }
            if (state is AuthenticationAccessRejected) {
              // WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
              Timer(const Duration(seconds: 5), () {
                Navigator.pushReplacementNamed(context, loginPageRoute);
              });
              // });
              return;
            }
          },
          builder: (context, state) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    constraints:
                        const BoxConstraints(maxWidth: 500, maxHeight: 500),
                    width: width - 40,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/E-Guru.gif"),
                      ),
                    ),
                  ),
                  const CircularProgressIndicator()
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
