import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFF27AE60);
const kAccentColor = Color(0xFFD8ECF1);
const kTextStyle = TextStyle(
  fontSize: 22.0,
  fontWeight: FontWeight.w500,
  color: Colors.black,
  letterSpacing: 1.2,
);
//---------
final kHintTextStyle = TextStyle(
  color: kPrimaryColor,
  fontFamily: 'OpenSans',
);

final kLabelStyle = TextStyle(
  color: kPrimaryColor,
  fontWeight: FontWeight.bold,
  fontFamily: 'OpenSans',
);

final kBoxDecorationStyle = BoxDecoration(
  color: Color(0xFFFFFFFF),
  borderRadius: BorderRadius.circular(10.0),
  boxShadow: [
    BoxShadow(
      color: Colors.black12,
      blurRadius: 6.0,
      offset: Offset(0, 2),
    ),
  ],
);
