import 'package:eguru_app/domain/api_endpoints.dart';
import 'package:flutter/material.dart';

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



const ButtonStyle elevatedButtonStyleColor = ButtonStyle(
  backgroundColor: MaterialStatePropertyAll(
    Color.fromARGB(255, 233, 9, 210),
  ),
);

showCustomSnackbar({required String message, required BuildContext context}) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message),
    ),
  );
}

imageUrlConvert(String url) {
  if (url.contains("shop")) {
    String imageUrl = "$baseUrl${url.split('shop/').last}";
    return imageUrl;
  }
  String imageUrl = "$baseUrl2$url";
  return imageUrl;
}

int hourConverter(int hour) {
  if (hour > 12) {
    hour -= 12;
  }
  if (hour == 0) {
    hour = 12;
  }
  return hour;
}
