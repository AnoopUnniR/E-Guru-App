
import 'package:eguru_app/constants/constants.dart';
import 'package:flutter/material.dart';


class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: scaffoldBackgroundDecoration(),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: const Text(
            "Privacy Policy",
            style: TextStyle(fontSize: 30),
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: ListView(
          padding: const EdgeInsets.all(16.0),
          children: const <Widget>[
            Text(
              'Privacy Policy for E-Guru App',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Effective Date: [Date]',
              style: TextStyle(
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Welcome to E-Guru! This Privacy Policy outlines how we collect, use, disclose, and protect your information when you use our mobile application (the "App"). We are committed to safeguarding your privacy and ensuring transparency in our data practices.',
              style: TextStyle(),
            ),
            // Include the rest of your Privacy Policy content here as Text widgets.
          ],
        ),
      ),
    );
  }
}
