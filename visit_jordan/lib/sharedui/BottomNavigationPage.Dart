import 'package:flutter/material.dart';
import 'package:visit_jordan/screens/activityPage.dart';
import 'package:visit_jordan/screens/homePage.dart';
import 'package:visit_jordan/screens/mapPage.dart';
import 'package:visit_jordan/utilities/Utilities.dart';

import '../constants.dart';

class BottomNAvigationWidget extends StatefulWidget {
  @override
  _BottomNAvigationWidgetState createState() => _BottomNAvigationWidgetState();
}

class _BottomNAvigationWidgetState extends State<BottomNAvigationWidget> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: Utilities.currentTap,
      selectedItemColor: kPrimaryColor,
      onTap: (int value) {
        setState(() {
          Utilities.currentTap = value;
          switch (Utilities.currentTap) {
            case 0:
              {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                    (route) => false);
              }
              break;
            case 1:
              {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => ActivityPage()),
                    (route) => false);
              }
              break;
            case 2:
              {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => MapPage()),
                    (route) => false);
              }
              break;
          }
        });
      },
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: SizedBox.shrink(),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.outlined_flag),
          title: SizedBox.shrink(),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.place),
          title: SizedBox.shrink(),
        ),
      ],
    );
  }
}
