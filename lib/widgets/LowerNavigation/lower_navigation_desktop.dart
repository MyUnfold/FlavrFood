import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:mywebapp/constants/app_colors.dart';
import 'package:mywebapp/widgets/LowerNavigation/value_input.dart';
import 'package:mywebapp/views/home/home_view.dart';


class LowerNavigationDesktop extends StatefulWidget{
  @override
  LowerNavigationDesktopState createState() => LowerNavigationDesktopState();
}

class LowerNavigationDesktopState extends State<LowerNavigationDesktop>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
      Container(
          padding: EdgeInsets.symmetric(vertical: 50, horizontal:  30),
          color: lowerNavigationColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(     // First Column
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      ValueInput("Option F1", MaterialPageRoute(builder: (context) => HomeView())),
                      ValueInput("Option F2", MaterialPageRoute(builder: (context) => HomeView())),
                      ValueInput("Option F3", MaterialPageRoute(builder: (context) => HomeView())),
                      ValueInput("Option F4", MaterialPageRoute(builder: (context) => HomeView())),
                    ],
                  ),
                  Column(     // Second Column
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      ValueInput("Option S1", MaterialPageRoute(builder: (context) => HomeView())),
                      ValueInput("Option S2", MaterialPageRoute(builder: (context) => HomeView())),
                      ValueInput("Option S3", MaterialPageRoute(builder: (context) => HomeView())),
                      ValueInput("Option S4", MaterialPageRoute(builder: (context) => HomeView())),
                    ],
                  ),
                  Column(     // third Column
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      ValueInput("Option T1", MaterialPageRoute(builder: (context) => HomeView())),
                      ValueInput("Option T2", MaterialPageRoute(builder: (context) => HomeView())),
                      ValueInput("Option T3", MaterialPageRoute(builder: (context) => HomeView())),
                      ValueInput("Option T4", MaterialPageRoute(builder: (context) => HomeView())),
                    ],
                  ),
                  Column(     // Second Column
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
//                      Expanded(
//                        child: Container(
//                          width: 300.0,
//                          color: Colors.white,
//                          child: TextField(
//                          ),
//                        ),
//                      ),
                      Text(
                        "A message to be insetrted",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.italic,
                        ),
                        textAlign: TextAlign.center,
                      ),
                     ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    "Term and Condition to be inserted here",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.italic,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              )
            ],
          )
      );

  }
}
