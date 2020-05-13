import 'package:flutter/material.dart';


class HomeContentMobile extends StatefulWidget {
  HomeContentMobile({Key key, this.title}) : super(key: key);
  final String title;

  @override
  HomeContentMobileState createState() => HomeContentMobileState();
}

class HomeContentMobileState extends State<HomeContentMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(
                  height: 50,
                  width: 200,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'search',
                      icon: Icon(Icons.search),
                    ),
//                    onChanged: (),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            alignment: Alignment.center,
            child: Text("Today's Options",
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic,
                fontSize: 35),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              "\n    Select from the lsit below \n",
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            child: DefaultTabController(
              length: 1,
              child: Container(
                child: TabBar(
                  labelColor: Colors.black,
                  labelStyle: TextStyle(fontStyle: FontStyle.italic),
                  indicatorSize: TabBarIndicatorSize.label,
                  tabs: <Widget>[
                    Tab(text: "Main Plates"),
                  ],
                ),
              ),
            ),
          ),
          /// Content For the Page - DESKTOP -
        ],
      ),
    );
  }
}
