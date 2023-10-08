
import 'package:eguru_app/presentation/login_pages/widgets/textformfield.dart';
import 'package:flutter/material.dart';

class PdfTextFieldWidget extends StatelessWidget {
  const PdfTextFieldWidget(
      {super.key,
      required this.width,
      required this.pdfController,
      required this.onpressed});

  final double width;
  final TextEditingController pdfController;
  final Function() onpressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width * 70,
      child: Stack(
        children: [
          InputField(
            enabled: false,
            maxLines: null,
            label: "insert PDF here",
            controller: pdfController,
            keyboardType: TextInputType.streetAddress,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(top: 5, right: 10),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Colors.white,
                  ),
                ),
                onPressed: onpressed,
                child: const Text(
                  "Insert",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
