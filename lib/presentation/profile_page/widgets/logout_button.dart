

import 'package:eguru_app/constants/constants.dart';
import 'package:eguru_app/presentation/routing/screen_routing.dart';
import 'package:flutter/material.dart';
import 'package:eguru_app/infrastructure/shared_prefernce/token_handler.dart';


class LogOutButton extends StatelessWidget {
  const LogOutButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () async {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text(
              'Logout',
              style: TextStyle(color: Colors.black),
            ),
            content: const Text('Are you sure you want to log out?',
                style: TextStyle(color: Colors.black)),
            actions: [
              ElevatedButton(
                child: const Text('Cancel'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              ElevatedButton(
                child: const Text('Logout'),
                onPressed: () {
                  SaveToken.deleteToken();
                  Navigator.of(context).pop();
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    loginPageRoute,
                    (route) => false,
                  );
                },
              ),
            ],
          ),
        );
      },
      child: textWhite("Log Out"),
    );
  }
}
