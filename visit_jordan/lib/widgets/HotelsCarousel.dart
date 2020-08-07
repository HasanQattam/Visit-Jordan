import 'package:flutter/material.dart';
import 'package:visit_jordan/models/hotel_model.dart';
import 'package:visit_jordan/screens/activityPage.dart';
import 'package:visit_jordan/screens/loginPage.dart';
import '../constants.dart';

class HotelsCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
//            color: Colors.blue,            full container
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: hotels.length,
        itemBuilder: (BuildContext context, int index) {
          Hotel hotel = hotels[index];
          return Container(
            margin: EdgeInsets.all(10),
//                  color: Colors.red,
            width: 240,
            child: Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                Positioned(
                  bottom: 15.0,
                  child: Container(
                    height: 170,
                    width: 240,
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
                            hotel.name,
                            style: kTextStyle,
                          ),
                          SizedBox(height: 2.0),
                          Text(
                            hotel.address,
                            style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                          Text(
                            '\$${hotel.price} / night',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0.0, 2.0),
                        blurRadius: 6.0,
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image(
                      //container image
                      height: 164.0,
                      width: 230.0,
                      image: AssetImage(hotel.imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 210,
                  left: 140,
                  child: ButtonTheme(
                    minWidth: 80,
                    height: 30,
                    child: RaisedButton(
                      color: kPrimaryColor,
                      textColor: Colors.white,
                      disabledColor: Colors.grey,
                      disabledTextColor: Colors.black,
                      padding: EdgeInsets.all(8),
                      splashColor: Colors.tealAccent,
                      onPressed: () {
                        /*if the user was loged in .. else ...
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));
                                */
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ActivityPage()));
                      },
                      child: Text(
                        "Reserve ",
                        style: TextStyle(fontSize: 15.0),
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
