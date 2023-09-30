import 'package:eguru_app/constants/page_background_color.dart';
import 'package:flutter/material.dart';

class ProfileEditPage extends StatelessWidget {
  const ProfileEditPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: scaffoldBackgroundDecoration(),
      child: const Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(child: Column(
          children: [   
          ],
        )),
      ),
    );
  }
}