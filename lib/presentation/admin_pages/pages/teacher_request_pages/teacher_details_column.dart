import 'package:eguru_app/constants/constants.dart';
import 'package:eguru_app/presentation/admin_pages/pages/pdf_view_page.dart';
import 'package:flutter/material.dart';

class TeacherDetailsColumnWidget extends StatelessWidget {
  const TeacherDetailsColumnWidget(
      {super.key,
      required this.name,
      required this.email,
      required this.mobile,
      required this.country,
      required this.qualification,
      required this.status,
      required this.resume,
      required this.lastLogin});

  final String name;
  final String email;
  final String mobile;
  final String country;
  final String qualification;
  final bool status;
  final String resume;
  final DateTime lastLogin;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        sbw30,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            texttDetailsWidget(title: "Name", value: name),
            sbh10,
            texttDetailsWidget(title: "Email", value: email),
            sbh10,
            texttDetailsWidget(title: "Mobile", value: mobile),
            sbh10,
            SizedBox(
              width: width - 60,
              child: texttDetailsWidget(title: "Country", value: country),
            ),
            sbh10,
            SizedBox(
              width: width - 60,
              child: texttDetailsWidget(
                  title: "Qualification", value: qualification),
            ),
            sbh10,
            SizedBox(
                width: width - 60,
                child: const Divider(
                  color: Colors.black,
                )),
            dateDetailsWidget(value: lastLogin.toString()),
            sbh10,
            texttDetailsWidget(
                title: "Status", value: status ? "Pending" : "confirmed"),
            sbh10,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                texttDetailsWidget(title: "Resume", value: ""),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PdfViewPage(pdf: resume),
                      ),
                    );
                  },
                  child: const Text("View"),
                ),
                // ElevatedButton(
                //     onPressed: () {},
                //     child: const Text("Verify")),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Text texttDetailsWidget({required String title, required String value}) {
    return Text(
      "$title : $value",
      style: const TextStyle(fontSize: 20, color: Colors.black),
    );
  }

  Column dateDetailsWidget({required String value}) {
    List val = value.split(" ");
    String date = val.first.toString().split("-").reversed.join("-");
    String time = val.last.toString().split(".").first;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Last Login",
          style: TextStyle(
              fontSize: 23, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        Text(
          "Date : $date",
          style: const TextStyle(fontSize: 20, color: Colors.black),
        ),
        Text(
          "Time : $time",
          style: const TextStyle(fontSize: 20, color: Colors.black),
        ),
      ],
    );
  }
}
