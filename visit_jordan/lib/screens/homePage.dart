import 'package:flutter/material.dart';
import 'package:visit_jordan/widgets/HotelsCarousel.dart';
import 'package:visit_jordan/widgets/suggestedCarousel.dart';
import 'package:visit_jordan/widgets/textBox.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentTap = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFF),
        title: Image.asset(
          'assets/images/Tourist.png',
          fit: BoxFit.cover,
        ),
        actions: <Widget>[
          IconButton(
            color: Color(0xFF27AE60),
            icon: Icon(Icons.notifications_none),
            onPressed: () {
              print('WOW!');
            },
          )
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  color: Colors.black,
                  child: Image.asset(
                    'assets/images/home2.png',
                    fit: BoxFit.cover,
                  ),
                  height: 125.57,
                  width: MediaQuery.of(context).size.width,
                ),
                Container(
                  alignment: Alignment.center,
                  height: 125.57,
                  width: MediaQuery.of(context).size.width,
                  child: Text(
                    'Join our activities in the  most beautiful \n places in Jordan with your local guide',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            MyTextBoxColumn(
              text: 'Suggested places',
            ),
            SuggestedCarousel(),
            MyTextBoxColumn(
              text: 'Exclusive Hotels',
            ),
            HotelsCarousel(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTap,
        onTap: (int value) {
          setState(() {
            _currentTap = value;
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
      ),
    );
  }
}
