import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:mywebapp/account/account_manager.dart';
import 'package:mywebapp/drawers/Navigation_drawer.dart';
import 'package:mywebapp/main.dart';
import 'package:mywebapp/views/home/home_view.dart';

class NavigationBarMobile extends StatefulWidget{
  @override
  NavigationBarMobileState createState() => NavigationBarMobileState();
}

class NavigationBarMobileState extends State<NavigationBarMobile> {
  NavigationBarMobileState();
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
              Scaffold.of(context).openDrawer();
//              Navigator.push(context,
//              MaterialPageRoute(builder: (context) => NavigationDrawer()));
              /// what do to when pressed
            },
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
          IconButton(icon: Icon(Icons.account_circle),
            color: Colors.black,
            onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LogInPage()));
              /// what do to when pressed
            },
          ),
        ],
      ),
    );
  }
}
