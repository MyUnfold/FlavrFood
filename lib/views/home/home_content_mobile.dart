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
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: SizedBox(
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
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Expanded(
            child: SizedBox(
              child: Text("Today's Options",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.italic,
                  fontSize: 35),
              ),
            ),
          ),
          Expanded(
            child: DefaultTabController(
              length: 2,
              child: Container(
                child: TabBar(
                  labelColor: Colors.black,
                  labelStyle: TextStyle(fontStyle: FontStyle.italic),
                  indicatorSize: TabBarIndicatorSize.label,
                  tabs: <Widget>[
                    Tab(text: "All Cuisines"),
                    Tab(text: "Special"),
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
