import 'package:flutter/material.dart';

import '../constants.dart';

class MyTextBoxColumn extends StatelessWidget {
  MyTextBoxColumn({this.text});
  final String text;
  //'Suggested places'
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          color: Color(0xFFFFFFFF),
          height: 35.26,
          width: 500,
          padding: EdgeInsets.fromLTRB(19, 3, 3, 3),
          child: Text(
            text,
            style: kTextStyle,
          ),
        ),
      ],
    );
  }
}
