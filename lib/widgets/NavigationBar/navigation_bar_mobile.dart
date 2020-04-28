import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:mywebapp/account/account_manager.dart';
import 'package:mywebapp/drawers/Navigation_drawer.dart';
import 'package:mywebapp/main.dart';
import 'package:mywebapp/views/home/home_view.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class NavigationBarMobile extends StatefulWidget{
  @override
  NavigationBarMobileState createState() => NavigationBarMobileState();
}

class NavigationBarMobileState extends State<NavigationBarMobile> {
  NavigationBarMobileState();
  @override
  Widget build(BuildContext context) {
    return Container(
      child:
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: SizedBox(
              child: IconButton(icon: Icon(Icons.list),
                color: Colors.black,
                onPressed: (){
                  Scaffold.of(context).openDrawer();
                  /// what do to when pressed
                },
              ),
            ),
          ),
          SizedBox(
            height: 500,
          ),
        ],
      ),
    );
  }
}
