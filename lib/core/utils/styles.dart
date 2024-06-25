import 'package:flutter/material.dart';

abstract class Styles {
  static TextStyle welcomeStyle(BuildContext context) => TextStyle(
        fontFamily: 'Jokerman',
        fontSize: getResponsiveText(context, 40),
        fontWeight: FontWeight.w400,
      );

  static TextStyle descriptionStyle(BuildContext context) => TextStyle(
        color: Colors.white,
        fontSize: getResponsiveText(context, 18),
        fontWeight: FontWeight.w400,
        fontFamily: 'AkayaKanadaka-Regular',
      );

  static TextStyle voicesStyle(BuildContext context) => TextStyle(
        color: Colors.black,
        fontSize: getResponsiveText(context, 24),
        fontWeight: FontWeight.w400,
        fontFamily: 'AkayaKanadaka-Regular',
      );
}

double getResponsiveText(BuildContext context, double fontBase) {
  double scaleFactor = getScaleFactor(context);
  double responsiveText = fontBase * scaleFactor;
  double lowerLimit = fontBase * 0.8;
  double upperLimit = fontBase * 1.2;
  return responsiveText.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.of(context).size.width;
  if (width < 600) {
    return width / 400;
  } else if (width < 900) {
    return width / 700;
  } else {
    return width / 1000;
  }
}
