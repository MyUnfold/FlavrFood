import 'package:flutter/material.dart';


class HomeOptionCard extends StatefulWidget {
  String imageAsset;
  String name;

  @override
  HomeOptionCardState createState() => HomeOptionCardState();
}

class HomeOptionCardState extends State<HomeOptionCard>{

  String text;
  Route route;

  ValueInput(String n, Route r) {
    text = n;
    route = r;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FlatButton(
      child: Text(
        text,
        style: TextStyle(
            fontWeight: FontWeight.w500
        ),
        textAlign: TextAlign.center,
      ),
      onPressed: () {
        Navigator.push(context, route);
      },
    );
  }
}