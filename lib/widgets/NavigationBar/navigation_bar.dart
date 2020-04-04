import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:mywebapp/widgets/NavigationBar/navigation_bar_mobile.dart';
import 'package:mywebapp/widgets/NavigationBar/navigation_bar_tablet_desktop.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:mywebapp/account/account_manager.dart';
import 'package:mywebapp/main.dart';

class NavigationBar extends StatefulWidget{
  @override
  NavigationBarState createState() => NavigationBarState();
}

class NavigationBarState extends State<NavigationBar> {
  NavigationBarState();
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: NavigationBarMobile(),
      tablet: NavigationBarTabletDesktop(),
    );
//      Container(
//      color: Colors.grey,
//      height: 60,
//      child: Row(
//            mainAxisAlignment: MainAxisAlignment.spaceBetween,
//            children: <Widget>[
//              IconButton(icon: Icon(Icons.list),
//                color: Colors.black,
//                onPressed: (){
//                  /// what do to when pressed
//                },
//              ),
//              FlatButton(
//                  child: Text(
//                    "OUR STORY",
//                    textAlign: TextAlign.center,
//                    style: TextStyle (fontWeight: FontWeight.w900),
//                  ),
//                  onPressed: (){
//                    /// what to do on pressed
//                  }
//              ),
//              FlatButton(
//                  child: Text(
//                    "GIFTS",
//                    textAlign: TextAlign.center,
//                    style: TextStyle (fontWeight: FontWeight.w900),
//                  ),
//                  onPressed: (){
//                    /// what to do on pressed
//                  }
//              ),
//              FlatButton(
//                child: Text(
//                  "Flavor Food",
//                  style: TextStyle(
//                    fontSize:  24,
//                    fontWeight: FontWeight.bold,
//                    color: Colors.black,
//                  ),
//                  textAlign: TextAlign.center,
//                ),
//                onPressed: (){
//                  Navigator.pop(context);
//                  Navigator.push(context,
//                            MaterialPageRoute( builder: (context) => MyHomePage()));
//                  /// what to do when pressed
//                },
//              ),
//              FlatButton(
//                  child: Text(
//                    "LOGIN",
//                    textAlign: TextAlign.center,
//                    style: TextStyle (fontWeight: FontWeight.w900),
//                  ),
//                  onPressed: (){
//                    /// what to do on pressed
//                    Navigator.push(context,
//                        MaterialPageRoute(builder: (context) => LogInPage()));
//                  }
//              ),
//              FlatButton(
//                  child: Text(
//                    "HELP",
//                    textAlign: TextAlign.center,
//                    style: TextStyle (fontWeight: FontWeight.w900),
//                  ),
//                  onPressed: (){
//                    /// what to do on pressed
//                  }
//              ),
//              FlatButton(
//                  child: Text(
//                    "GET STARTED",
//                    textAlign: TextAlign.center,
//                    style: TextStyle (fontWeight: FontWeight.w900),
//                  ),
//                  onPressed: (){
//
//                    /// what to do on pressed
//                  }
//              ),
////            (
////            mainAxisSize: MainAxisSize.min,
////            children: <Widget>[
////              _NavBarItem('Episodes'),
////              SizedBox(
////                width: 60,
////              ),
////              _NavBarItem('About'),
////            ],
////          )
//        ],
//      ),
//    );
  }
}

