import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFF),
        title: Image.asset(
          'assets/Tourist.png',
          fit: BoxFit.cover,
        ),
        actions: <Widget>[
          IconButton(
              color: Color(0xFF27AE60),
              icon: Icon(Icons.notifications_none),
              onPressed: () {
                print('WOW!');
              })
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Container(
              color: Colors.black,
              child: Image.asset(
                'assets/home2.png',
                fit: BoxFit.cover,
              ),
              height: 146.57,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              color: Color(0xFFFFFFFF),
              height: 30.26,
              width: 375,
              child: Text(
                'Suggested places',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
