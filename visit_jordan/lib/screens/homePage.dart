import 'package:flutter/material.dart';
import 'package:visit_jordan/constants.dart';
import 'package:visit_jordan/models/destination_model.dart';

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
          'assets/images/Tourist.png',
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
                'assets/images/home2.png',
                fit: BoxFit.cover,
              ),
              height: 146.57,
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: <Widget>[
                Container(
                  color: Color(0xFFFFFFFF),
                  height: 35.26,
                  width: 500,
                  padding: EdgeInsets.fromLTRB(19, 3, 3, 3),
                  child: Text(
                    'Suggested places',
                    style: kTextStyle,
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Container(
              height: 300,
              color: Colors.blue,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: destinations.length,
                itemBuilder: (BuildContext context, int index) {
                  Destination destination = destinations[index];
                  return Container(
                    margin: EdgeInsets.all(10),
                    color: Colors.red,
                    width: 210,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: <Widget>[
                        Positioned(
                          bottom: 15.0,
                          child: Container(
                            height: 120,
                            width: 200,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    '${destination.activities.length} activities',
                                    style: kTextStyle,
                                  ),
                                  Text(
                                    destination.description,
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                offset: Offset(0.0, 2.0),
                                blurRadius: 6.0,
                              ),
                            ],
                          ),
                          child: Stack(
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: Image(
                                  height: 180.0,
                                  width: 180.0,
                                  image: AssetImage(destination.imageUrl),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
