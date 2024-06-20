import 'package:flutter/material.dart';

abstract class Styles {
  static const TextStyle welcomeStyle = TextStyle(
    fontFamily: 'Jokerman',
    fontSize: 40,
    fontWeight: FontWeight.w400,
  );

  static const TextStyle descriptionStyle = TextStyle(
    color: Colors.white,
    fontSize: 18,
    fontWeight: FontWeight.w400,
    fontFamily: 'AkayaKanadaka-Regular',
  );

  static const TextStyle voicesStyle = TextStyle(
    color: Colors.black,
    fontSize: 24,
    fontWeight: FontWeight.w400,
    fontFamily: 'AkayaKanadaka-Regular',
  );
}
