import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:mywebapp/constants/app_colors.dart';
import 'package:mywebapp/views/home/home_view.dart';
import 'package:mywebapp/widgets/LowerNavigation/value_input.dart';


class LowerNavigationMobile extends StatefulWidget{
  @override
  LowerNavigationMobileState createState() => LowerNavigationMobileState();
}

class LowerNavigationMobileState extends State<LowerNavigationMobile>{

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
                  Column(     // left Column
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      ValueInput("Option L1", MaterialPageRoute(builder: (context) => HomeView())),
                      ValueInput("Option L2", MaterialPageRoute(builder: (context) => HomeView())),
                      ValueInput("Option L3", MaterialPageRoute(builder: (context) => HomeView())),
                      ValueInput("Option L4", MaterialPageRoute(builder: (context) => HomeView())),
                    ],
                  ),
                  Column(     // right Column
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      ValueInput("Option R1", MaterialPageRoute(builder: (context) => HomeView())),
                      ValueInput("Option R2", MaterialPageRoute(builder: (context) => HomeView())),
                      ValueInput("Option R3", MaterialPageRoute(builder: (context) => HomeView())),
                      ValueInput("Option R4", MaterialPageRoute(builder: (context) => HomeView())),
                    ],
                  ),
                ],
              ),
              Text(
                "A message to be insetrted",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.italic,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          )
        );
  }
}

//
//class ValueInput extends StatelessWidget{
//
//  String text;
//  Route route;
//
//  ValueInput(String n, Route r){
//    text = n;
//    route = r;
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return FlatButton(
//      child: Text(
//        text,
//        style: TextStyle(
//          fontWeight: FontWeight.w500
//        ),
//        textAlign: TextAlign.center,
//      ),
//      onPressed: (){
//        Navigator.push(context, route);
//      },
//    );
//  }
//}
