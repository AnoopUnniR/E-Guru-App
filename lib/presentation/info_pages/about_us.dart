import 'package:eguru_app/constants/constants.dart';
import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: scaffoldBackgroundDecoration(),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: const Text(
            "About Us",
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
        ),
        body: ListView(
          padding: const EdgeInsets.all(16.0),
          children: const <Widget>[
            Text(
              'About E-Guru',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'E-Guru is your go-to platform for free online learning. We believe that education should be accessible to everyone, and our mission is to empower learners worldwide by providing high-quality, free courses on a wide range of subjects.',
            ),
            SizedBox(height: 16.0),
            Text(
              'Our Features:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            ListTile(
              textColor: Colors.white,
              leading: Icon(
                Icons.school,
                color: Colors.white,
              ),
              title: Text('Free Courses'),
              subtitle: Text(
                  'Access a vast library of free courses in various fields.'),
            ),
            ListTile(
              textColor: Colors.white,
              leading: Icon(Icons.star, color: Colors.white),
              title: Text('Quality Content'),
              subtitle: Text(
                  'Learn from experts and educators in their respective fields.'),
            ),
            ListTile(
              textColor: Colors.white,
              leading: Icon(Icons.language, color: Colors.white),
              title: Text('Wide Range of Subjects'),
              subtitle: Text(
                  'Explore subjects ranging from science and technology to arts and humanities.'),
            ),
            ListTile(
              textColor: Colors.white,
              leading: Icon(Icons.access_time, color: Colors.white),
              title: Text('Flexible Learning'),
              subtitle: Text('Learn at your own pace, anytime and anywhere.'),
            ),
            SizedBox(height: 16.0),
            Text(
              'Our Team',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'E-Guru is made possible by a dedicated team of educators, content creators, and developers who are passionate about providing free education to the world. We are committed to making learning accessible and enjoyable for everyone.',
            ),
          ],
        ),
      ),
    );
  }
}
