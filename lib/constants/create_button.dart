import 'package:flutter/material.dart';

class CreateButtonWidget extends StatelessWidget {
  const CreateButtonWidget(
      {super.key, required this.function, required this.title, this.isLoading});

  final Function() function;
  final String title;
  final bool? isLoading;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 100;
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 400),
      child: SizedBox(
        width: width * 70,
        child: ElevatedButton(
            onPressed: function,
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 233, 9, 210),
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0),
              ),
            ),
            child: isLoading == null || isLoading == false
                ? Text(
                    title,
                    style: const TextStyle(color: Colors.white),
                  )
                : const CircularProgressIndicator()),
      ),
    );
  }
}
