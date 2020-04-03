import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';


class AppBarNavigator extends StatefulWidget{
  AppBarNavigator(){
    /// Nothing here yet
}
  @override
  AppBarNavigatorState createState() => AppBarNavigatorState();
}

class AppBarNavigatorState extends State<AppBarNavigator> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AppBar(
      title: Text( "Flavor Food"),
      backgroundColor: Colors.white,
//      leading: ,
      actions: <Widget>[
        FlatButton(
          child: Text(
            "LOGIN",
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
      ],
    );
  }

}