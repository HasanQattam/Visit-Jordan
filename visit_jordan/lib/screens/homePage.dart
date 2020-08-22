import 'package:flutter/material.dart';
import 'package:visit_jordan/apis/ActivityApi.dart';
import 'package:visit_jordan/apis/LoginApi.dart';
import 'package:visit_jordan/apis/RegesterApi.dart';
import 'package:visit_jordan/models/genral_response.dart';
import 'package:visit_jordan/widgets/HotelsCarousel.dart';
import 'package:visit_jordan/widgets/suggestedCarousel.dart';
import 'package:visit_jordan/widgets/textBox.dart';
import 'package:visit_jordan/sharedui/BottomNavigationPage.Dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  LoginApi login = LoginApi();
  ActivityApi act = ActivityApi();

//  GeneralResponse response = GeneralResponse();

  @override
  void initState() {
    super.initState();

    // api.regester("a","b","c").then((value){response=value;
    //         print(response.message);
// });
  }

  @override
  Widget build(BuildContext context) {
    act.activity();
    login.login('b', 'c');
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
      bottomNavigationBar: BottomNAvigationWidget(),
    );
  }
}
