import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:visit_jordan/data/data.dart';
import 'package:visit_jordan/models/activityWall_model.dart';
import 'package:visit_jordan/models/categories_model.dart';
import 'package:http/http.dart' as http;
import 'package:visit_jordan/screens/searchActivity.dart';
import 'package:visit_jordan/widgets/wallphotos.dart';

class ActivityPage extends StatefulWidget {
  @override
  _ActivityPageState createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  List<CategorieModel> categories = new List();
  List<WallpaperModel> wallpapers = new List();
  TextEditingController searchController = new TextEditingController();
  getAllPhotos() async {
    var response = await http.get("https://api.pexels.com/v1/curated",
        headers: {"Authorization": apiKey});
    // print(response.body.toString());
    Map<String, dynamic> jsonData = jsonDecode(response.body);
    jsonData["photos"].forEach((element) {
      //print(element);
      WallpaperModel wallpaperModel = new WallpaperModel();
      wallpaperModel = WallpaperModel.fromMap(element);
      wallpapers.add(wallpaperModel);
    });
    setState(() {});
  }

  int _currentTap = 0;

  @override
  void initState() {
    getAllPhotos();
    categories = getCategories();
    super.initState();
  }

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
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xffe8f5e9),
                  borderRadius: BorderRadius.circular(30),
                ),
                margin: EdgeInsets.symmetric(horizontal: 24),
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: searchController,
                        decoration: InputDecoration(
                          hintText: "search",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Search(
                                        searchQuere: searchController.text,
                                      )));
                        },
                        child: Icon(Icons.search)),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 80,
                child: ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return CategoriesTile(
                      title: categories[index].categorieName,
                      imgUrl: categories[index].imgUrl,
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
              wallpapersList(wallpapers: wallpapers, context: context),
            ],
          ),
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

/*ListView.builder(
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return CategoriesTile(
              title: categories[index].categorieName,
              imgUrl: categories[index].imgUrl,
            );
          },
        ),
        */
class CategoriesTile extends StatelessWidget {
  final String imgUrl, title;
  CategoriesTile({@required this.imgUrl, @required this.title});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 4),
      padding: EdgeInsets.only(right: 4),
      child: Stack(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(imgUrl,
                height: 80, width: 130, fit: BoxFit.cover),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Container(
              color: Colors.black38,
              height: 80,
              width: 130,
              alignment: Alignment.center,
              child: Text(
                title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
