
import 'package:flutter/material.dart';
import 'package:mywebapp/drawers/navigation_drawer_header.dart';

class NavigationDrawer extends StatefulWidget{
  @override
  NavigationDrawerState createState() => NavigationDrawerState();
}

class NavigationDrawerState extends State<NavigationDrawer> {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 16)]),
      child: Column(
        children: <Widget>[
          NavigationDrawerHeader(),
          FlatButton(
              child: Text(
                "OUR STORY",
                textAlign: TextAlign.center,
                style: TextStyle (fontWeight: FontWeight.w900),
              ),
              onPressed: () {
                /// what to do on pressed
              }
          ),
          FlatButton(
              child: Text(
                "GIFTS",
                textAlign: TextAlign.center,
                style: TextStyle (fontWeight: FontWeight.w900),
              ),
              onPressed: (){
                /// what to do on pressed
              }
          ),
          FlatButton(
              child: Text(
                "HELP",
                textAlign: TextAlign.center,
                style: TextStyle (fontWeight: FontWeight.w900),
              ),
              onPressed: (){
                /// what to do on pressed
              }
          ),
          FlatButton(
              child: Text(
                "GET STARTED",
                textAlign: TextAlign.center,
                style: TextStyle (fontWeight: FontWeight.w900),
              ),
              onPressed: (){

                /// what to do on pressed
              }
          ),
          SizedBox(
            height: 150 ,
          ),
          IconButton(icon: Icon(Icons.close),
              color: Colors.black,
              onPressed: () {
                Navigator.pop(context);
              }
          ),
        ],
      ),
    );
  }
}