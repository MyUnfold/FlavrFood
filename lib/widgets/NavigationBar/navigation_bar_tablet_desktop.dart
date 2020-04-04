import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:mywebapp/account/account_manager.dart';
import 'package:mywebapp/main.dart';
import 'package:mywebapp/views/home/home_view.dart';
import 'package:mywebapp/widgets/NavigationBar/navbar_logo.dart';

class NavigationBarTabletDesktop extends StatefulWidget{
  @override
  NavigationBarTabletDesktopState createState() => NavigationBarTabletDesktopState();
}

class NavigationBarTabletDesktopState extends State<NavigationBarTabletDesktop> {
  NavigationBarTabletDesktopState();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(icon: Icon(Icons.list),
            color: Colors.black,
            onPressed: (){
              /// what do to when pressed
            },
          ),
          FlatButton(
              child: Text(
                "OUR STORY",
                textAlign: TextAlign.center,
                style: TextStyle (fontWeight: FontWeight.w900),
              ),
              onPressed: (){
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
              "Flavor Food",
              style: TextStyle(
                fontSize:  24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            onPressed: (){
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute( builder: (context) => HomeView()));
              /// what to do when pressed
            },
          ),
          FlatButton(
              child: Text(
                "LOGIN",
                textAlign: TextAlign.center,
                style: TextStyle (fontWeight: FontWeight.w900),
              ),
              onPressed: (){
                /// what to do on pressed
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LogInPage()));
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
        ],
      ),
    );
  }
}