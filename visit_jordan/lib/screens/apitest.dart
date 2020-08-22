import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class TestApi1 extends StatefulWidget {
  @override
  _TestApi1State createState() => _TestApi1State();
}

class _TestApi1State extends State<TestApi1> {
  String responseBody;
  getData() async {
    var response = await http.get(
        "https://visitjordan112.000webhostapp.com/mobile_connection.php?get_activity");

    // print(response.body.toString());

    Map<String, dynamic> jsonData = jsonDecode(response.body);
    jsonData["activity"].forEach((element) {
      // print(element);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RaisedButton(
          onPressed: () => getData(),
          child: Text(
            "get Data",
          ),
        ),
        Text(
          '$responseBody',
          style: TextStyle(fontSize: 20),
        ),
      ],
    );
  }
}

/*{ "activity":[{"State":"Amman","Type":"1","Title":"new title","Desc":"this is desc"
,"start_time":"43:48:19","end_time":"32:48:19","price":"20"},
{"State":"Aqaba","Type":"1","Title":"asdsad","Desc":"this is desc",
"start_time":"28:31:30","end_time":"34:31:30","price":"5"},
{"State":"Amman","Type":"1","Title":"new titile","Desc":"this is why","start_time":"26:31:30","end_time":"15:31:30",
"price":"2"}] }*/
