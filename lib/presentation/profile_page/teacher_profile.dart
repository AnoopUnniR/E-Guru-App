

import 'package:eguru_app/constants/constants.dart';
import 'package:eguru_app/domain/models/teachers_model/teachers_user_mode.dart';
import 'package:eguru_app/infrastructure/image_provider/image_provider.dart';
import 'package:eguru_app/presentation/main_page.dart/widgets/bottom_nav.dart';
import 'package:eguru_app/presentation/profile_page/widgets/details_text.dart';
import 'package:eguru_app/presentation/profile_page/widgets/logout_button.dart';
import 'package:flutter/material.dart';


class TeacherProfile extends StatelessWidget {
  const TeacherProfile({super.key, required this.userTeacherModel});
  final UserTeacherModel userTeacherModel;
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
            "Teachers Profile",
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              sbh20,
              Container(
                constraints:const BoxConstraints(maxHeight: 150, maxWidth: 150),
                height: width * 55,
                width: width * 55,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: ImageProviderClass.imageProviderFunc(
                            userTeacherModel),
                          ),
                    color: Colors.white,
                    borderRadius: BorderRadiusDirectional.circular(10)),
              ),
              sbh40,
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextDetailsWidget(
                          data: userTeacherModel.name,
                          head: "Name",
                        ),
                        sbh20,
                        TextDetailsWidget(
                          data: userTeacherModel.email,
                          head: "Email",
                        ),
                        sbh20,
                        TextDetailsWidget(
                          data: userTeacherModel.mobileNumber,
                          head: "Mobile",
                        ),
                        sbh20,
                        TextDetailsWidget(
                          data: userTeacherModel.country,
                          head: "Country",
                        ),
                        sbh20,
                        TextDetailsWidget(
                          data: userTeacherModel.mobileNumber,
                          head: "mobile",
                        ),
                        sbh20,
                        TextDetailsWidget(
                          data: userTeacherModel.highestQualification,
                          head: "Qualification",
                        ),
                        sbh20,
                        TextDetailsWidget(
                          data: userTeacherModel.skills,
                          head: "Skills",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const Spacer(),
              const LogOutButton()
            ],
          ),
        ),
        bottomNavigationBar: const BottomNavigationWidget(),
      ),
    );
  }
}