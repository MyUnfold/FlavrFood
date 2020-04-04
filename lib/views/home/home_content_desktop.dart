import 'package:flutter/material.dart';
import 'package:mywebapp/widgets/NavigationBar/navigation_bar.dart';


class HomeContentDesktop extends StatefulWidget {
  HomeContentDesktop({Key key, this.title}) : super(key: key);
  final String title;

  @override
  HomeContentDesktopState createState() => HomeContentDesktopState();
}

class HomeContentDesktopState extends State<HomeContentDesktop> {
//  Widget mainPage = Center(child: Text(
//    "Flavor Food",
//    style: TextStyle(fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
//    textScaleFactor: 5,
//  ),
//  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          /// Content For the Page - DESKTOP -
        ],
      ),
    );
  }
}
