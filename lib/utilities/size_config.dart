import 'package:flutter/material.dart';

//// This class provides relative sizes for screen of all sizes
/// A developer can use the functions to get proportional size for their own device
/// that'll be at the same position for other devices of different screen sizes as well

class SizeConfig {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static late double defaultSize;
  static late Orientation orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }
}

// Get the proportionate height as per screen size
double getProportionateScreenHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight;
  // 896 is the layout height that designer use
  // or you can say iPhone 11
  // I'm using 2412 for realme C67
  return (inputHeight / 2412.0) * screenHeight;
}

// Get the proportionate width as per screen size
double getProportionateScreenWidth(double inputWidth) {
  double screenWidth = SizeConfig.screenWidth;
  // 414 is the layout width that designer use
  // I'm using 1080 for realme C67
  return (inputWidth / 1080.0) * screenWidth;
}
