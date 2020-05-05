import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mywebapp/constants/app_colors.dart';

class NavigationDrawerHeader extends StatefulWidget{
  @override
  NavigationDrawerHeaderState createState() => NavigationDrawerHeaderState();
}

class NavigationDrawerHeaderState extends State<NavigationDrawerHeader>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement
    return Container(
      height: 12,
      color: primaryColor,
      alignment: Alignment.center,
      child: Column(
//        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'BROWSE',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w800,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}