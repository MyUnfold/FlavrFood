import 'package:flutter/material.dart';
import 'package:mywebapp/widgets/NavigationBar/navigation_bar.dart';


class HomeContentMobile extends StatefulWidget {
  HomeContentMobile({Key key, this.title}) : super(key: key);
  final String title;

  @override
  HomeContentMobileState createState() => HomeContentMobileState();
}

class HomeContentMobileState extends State<HomeContentMobile> {
//  Widget mainPage = Center(child: Text(
//    "Flavor Food",
//    style: TextStyle(fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
//    textScaleFactor: 5,
//  ),
//  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          /// Content For the Page - MOBILE -
        ],
      ),
    );
  }
}
