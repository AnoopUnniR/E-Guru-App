import 'package:eguru_app/domain/api_endpoints.dart';
import 'package:flutter/material.dart';

const profileImage =
    "https://cdn2.vectorstock.com/i/1000x1000/20/76/man-avatar-profile-vector-21372076.jpg";

Widget textWhite(String text) => Text(
      text,
      style: const TextStyle(color: Colors.white),
    );

const double textFieldWidth = 300;
const sbw5 = SizedBox(
  width: 5,
);
const sbw10 = SizedBox(
  width: 10,
);
const sbh5 = SizedBox(
  height: 5,
);

const sbh10 = SizedBox(
  height: 10,
);

const sbw20 = SizedBox(
  width: 20,
);

const sbw30 = SizedBox(
  width: 30,
);
const sbw40 = SizedBox(
  width: 40,
);
const sbh20 = SizedBox(
  height: 20,
);

const sbh30 = SizedBox(
  height: 30,
);

const sbh40 = SizedBox(
  height: 40,
);

const sbh60 = SizedBox(
  height: 60,
);

//input decoration for the text fields
InputDecoration inputDecorationTextfield(String text,
    [bool? paddingNotNeeded]) {
  return InputDecoration(
    focusedBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(50),
      ),
      borderSide: BorderSide(color: Colors.white, width: 5),
    ),
    enabledBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(50),
      ),
      borderSide: BorderSide(color: Colors.white, width: 3),
    ),
    hintText: text,
    contentPadding: paddingNotNeeded == null
        ? const EdgeInsets.only(left: 50, top: 20, bottom: 20)
        : null,
    hintStyle: const TextStyle(color: Colors.white),
  );
}

//background decoration for screens
BoxDecoration scaffoldBackgroundDecoration() {
  return const BoxDecoration(
    // color: Colors.blue,
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomLeft,
      colors: [
        Color.fromARGB(149, 21, 15, 199),
        Color.fromARGB(146, 22, 18, 255),
        Color.fromARGB(149, 21, 15, 199),
      ],
    ),
  );
}

showCustomSnackbar({required String message, required BuildContext context}) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message),
    ),
  );
}
imageUrlConvert(String url) {
  if (url[0] == "/") {
    String imageUrl = "$baseUrlImage${url.split('8000/').last}";
    // print(imageUrl);
    return imageUrl;
  }
  String imageUrl = "$baseUrl${url.split('8000/').last}";
  // print(imageUrl);
  return imageUrl;
}
