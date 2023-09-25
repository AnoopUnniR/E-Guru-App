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
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                    Color.fromARGB(255, 233, 9, 210),
                  ),
                ),
                child: const Text('Cancel'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              ElevatedButton(
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                    Color.fromARGB(255, 233, 9, 210),
                  ),
                ),
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
      child: const Text(
        "Log Out",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
