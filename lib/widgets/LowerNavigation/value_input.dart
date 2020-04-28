import 'package:flutter/material.dart';


class ValueInput extends StatelessWidget {

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