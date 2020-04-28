import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class NavigationBarButton extends StatefulWidget{
  String txt;
  Route route;
  Icon _icon;
  NavigationBarButton(String t, Icon ic, Route r){
    txt = t;
    route = r;
    _icon = ic;
  }
  @override
  NavigationBarButtonState createState() => NavigationBarButtonState(txt, _icon, route);
}

class NavigationBarButtonState extends State<NavigationBarButton>{
  String txt;
  Route route;
  Icon _icon;
  NavigationBarButtonState(String t, Icon ic, Route r){
    txt = t;
    route = r;
    _icon = ic;
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FlatButton.icon(
      onPressed: () {
        Navigator.push(context, route);
      },
      icon: _icon,
      label: Text(txt,
        style: TextStyle(
          color: Colors.black,
        ),
      ),
      hoverColor: Colors.white,
    );
  }
}