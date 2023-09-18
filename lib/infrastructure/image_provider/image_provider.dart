import 'package:eguru_app/constants/constants.dart';
import 'package:flutter/widgets.dart';

class ImageProviderClass {
  static ImageProvider imageProviderFunc(userModel) {
    ImageProvider imageProvider;

    if (userModel.image == null) {
      imageProvider = const AssetImage("assets/home_banner.jpg");
    } else {
      if (userModel.image.toString().contains("null")) {
        imageProvider = const AssetImage("assets/home_banner.jpg");
      } else {
        imageProvider = NetworkImage(imageUrlConvert(userModel.image));
      }
    }
    return imageProvider;
  }
}
