import 'package:eguru_app/constants/constants.dart';
import 'package:eguru_app/presentation/routing/screen_routing.dart';
import 'package:flutter/material.dart';

Widget newUserButton(
  BuildContext context,
) {
  return SizedBox(
    child: Column(children: [
      // const Text('Forgot your password?'),
      // TextButton(
      //   style: TextButton.styleFrom(
      //       padding: EdgeInsets.zero,
      //       tapTargetSize: MaterialTapTargetSize.shrinkWrap),
      //   onPressed: () {},
      //   child: const Text(
      //     "Click here",
      //     style: TextStyle(
      //       color: Colors.white,
      //       fontSize: 15,
      //     ),
      //   ),
      // ),
      sbh40,
      sbh10,
      const Text('New User?'),
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
