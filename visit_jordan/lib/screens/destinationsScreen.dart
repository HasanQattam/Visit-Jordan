import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:visit_jordan/models/destination_model.dart';

import '../constants.dart';

class DestinationsScreen extends StatefulWidget {
  final Destination destination;

  DestinationsScreen({this.destination});

  @override
  _DestinationsScreenState createState() => _DestinationsScreenState();
}

class _DestinationsScreenState extends State<DestinationsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    offset: Offset(0.0, 2.0),
                    blurRadius: 6.0,
                  ),
                ],
              ),
              child: Hero(
                tag: widget.destination.imageUrl,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                  child: Image(
                    image: AssetImage(widget.destination.imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Row(
              children: <Widget>[
                IconButton(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 40.0),
                  icon: Icon(Icons.arrow_back),
                  iconSize: 30.0,
                  color: kPrimaryColor,
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ),
            Positioned(
              left: 20,
              bottom: 20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    widget.destination.city,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.2),
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        FontAwesomeIcons.locationArrow,
                        size: 15.0,
                        color: Colors.white70,
                      ),
                      SizedBox(width: 5.0),
                      Text(
                        widget.destination.country,
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 17.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              right: 20,
              bottom: 20,
              child: Icon(
                Icons.location_on,
                color: Colors.white,
                size: 25.0,
              ),
            ),
          ],
        ),
        ListView.builder(
          itemCount: widget.destination.activities.length,
          itemBuilder: (BuildContext context, int index) {
            return;
          },
        )
      ],
    ));
  }
}
