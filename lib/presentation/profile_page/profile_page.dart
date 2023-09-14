

import 'package:eguru_app/application/profile_page/profile_page_bloc.dart';
import 'package:eguru_app/constants/constants.dart';
import 'package:eguru_app/domain/models/user_model/user_model.dart';
import 'package:eguru_app/presentation/main_page.dart/widgets/bottom_nav.dart';
import 'package:eguru_app/presentation/profile_page/widgets/details_text.dart';
import 'package:eguru_app/presentation/profile_page/widgets/logout_button.dart';
import 'package:eguru_app/presentation/routing/screen_routing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key, required this.userModel});
  final UserModel userModel;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 100;
    return Container(
      decoration: scaffoldBackgroundDecoration(),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () => indexChangeNotifier.value = 0,
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: const Text(
            "Profile",
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.edit,
                  color: Colors.white,
                ))
          ],
        ),
        body: SafeArea(
          child: userProfile(width, userModel, context),
        ),
        bottomNavigationBar: const BottomNavigationWidget(),
      ),
    );
  }

  Stack userProfile(double width, UserModel userModel, BuildContext context) {
    return Stack(
      children: [
        Center(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            sbh20,
            Container(
              constraints: const BoxConstraints(maxHeight: 150, maxWidth: 150),
              height: width * 55,
              width: width * 55,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(imageUrlConvert(userModel.image!)),
                ),
                color: Colors.white,
                borderRadius: BorderRadiusDirectional.circular(10),
              ),
            ),
            sbh40,
            TextDetailsWidget(
              data: userModel.name,
              head: "Name",
            ),
            sbh20,
            TextDetailsWidget(
              data: userModel.email,
              head: "Email",
            ),
            const Spacer(),
            const LogOutButton(),
            BlocBuilder<ProfilePageBloc, ProfilePageState>(
              builder: (context, state) {
                if (state is ProfilePageStudentUpdate) {
                  return const Text(
                    "Your Application Is Pending",
                    style: TextStyle(color: Colors.yellow),
                  );
                }
                return TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, teacherSignupPageRoute,
                        arguments: userModel);
                  },
                  child: textWhite("Do you want to be a teacher here?"),
                );
              },
            ),
          ]),
        ),
      ],
    );
  }
}
