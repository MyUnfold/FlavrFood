import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mywebapp/account/loginAlert.dart';
import 'package:mywebapp/account/login_signin.dart';
import 'package:mywebapp/views/Overview/overview_content_desktop.dart';
import 'package:mywebapp/views/home/home_view.dart';
import 'package:mywebapp/widgets/ElementCard/ElementCardDesktop.dart';
import 'package:mywebapp/widgets/ElementCard/SelectedCard.dart';
import 'package:mywebapp/widgets/NavigationBar/navigation_bar.dart';

import 'dart:convert';
import 'package:flutter/widgets.dart';
import 'dart:core';
import 'package:mywebapp/widgets/ElementCard/cardInfo.dart';
import 'package:http/http.dart' as http;
import 'package:mywebapp/widgets/NavigationBar/navigation_bar_tablet_desktop.dart';


class OverviewContentMobile extends StatefulWidget {
  OverviewContentMobile({Key key, this.title}) : super(key: key);
  final String title;

  @override
  OverviewContentMobileState createState() => OverviewContentMobileState();
}

class OverviewContentMobileState extends State<OverviewContentMobile> {

  createAlertDialog (BuildContext context){
    AccountAlert login = new AccountAlert(context);
    login.registerNow();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
//      appBar: AppBar(
//        title: Text(
//          "Flavr Food",
//          style: TextStyle(
//              fontWeight: FontWeight.w900,
//              fontSize: 30
//          ),
//        ),
//        leading: IconButton(icon: Icon(Icons.home),
//          onPressed: (){
//            Navigator.push(context, MaterialPageRoute(builder: (context) => HomeView()) );
//          },
//        ),
//      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Center(
              child: FlatButton(
                child: Text(
                  "Flavr Food",
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 30
                  ),
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomeView()) );
                },
              ),
            ),
            Center(
              child: Text(
                "ADD SOME FLAVOR TO YOUR WEEK",
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 14,
                    color: Colors.blueGrey
                ),
              ),
            ),
            Divider(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    //flex: 1,
                    child: Image.asset('/Users/benajasandrain/FlavrFood/lib/views/Overview/FoodSample/food2.jpg'),
                  ),
                  Expanded(
                    //flex: 2,
                    child: Image.asset('/Users/benajasandrain/FlavrFood/assets/index.png'),
                  ),
                  Expanded(
                    //flex: 1,
                    child: Image.asset('/Users/benajasandrain/FlavrFood/lib/views/Overview/FoodSample/food4.jpg'),
                  ),
                ],
              ),
            ),

            Divider(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 36),
              child: RaisedButton(
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(25)
                ),
                color: Colors.green,
                child: Text(
                  "Get Started",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                ),
                onPressed: (){
                  if (LogInAlert().alreadylogged){
                    return null;
                  }
                  else {
                    createAlertDialog(context);
                    //Navigator.pop(context);
                  }
                },
              ),
            ),
            Divider(),
            SizedBox(
              height: 100,
              child: Center(
                child: Text(
                    "Enter some information"
                ),
              ),
            ),
            Divider(),
            Container(
              height: 150,
              child: Row(
                children: <Widget>[
                  Expanded(child: ImageTheme('/Users/benajasandrain/FlavrFood/lib/views/Overview/FoodSample/food5.jpg')),
                  Expanded(child:ImageTheme('/Users/benajasandrain/FlavrFood/lib/views/Overview/FoodSample/food5.jpg')),
                  Expanded(child:ImageTheme('/Users/benajasandrain/FlavrFood/lib/views/Overview/FoodSample/food5.jpg')),
                ],
              ),
            ),

            Divider(),
            SizedBox(
              height: 100,
              child: Center(
                child: Text(
                    "Enter some information"
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}