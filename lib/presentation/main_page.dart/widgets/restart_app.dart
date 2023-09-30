
import 'package:flutter/material.dart';
import 'package:restart_app/restart_app.dart';

class RestartAppWidget extends StatelessWidget {
  const RestartAppWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text(
        "Restart App?",
        style: TextStyle(color: Colors.black),
      ),
      content: const Text(
        "Do you want to Restart the App?",
        style: TextStyle(color: Colors.black),
      ),
      actions: [
        ElevatedButton(
          style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(
              Color.fromARGB(255, 233, 9, 210),
            ),
          ),
          onPressed: () async {
            await Restart.restartApp();
          },
          child: const Text("Confirm"),
        ),
        ElevatedButton(
          style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(
              Color.fromARGB(255, 233, 9, 210),
            ),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("Cancel"),
        )
      ],
    );
  }
}
