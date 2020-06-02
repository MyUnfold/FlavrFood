import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mywebapp/main.dart';
import 'package:mywebapp/views/home/home_view.dart';
import 'package:mywebapp/widgets/ElementCard/ElementCardDesktop.dart';
import 'package:mywebapp/widgets/ElementCard/SelectedCard.dart';
import 'package:mywebapp/widgets/NavigationBar/navigation_bar.dart';

import 'dart:convert';
import 'package:flutter/widgets.dart';
import 'dart:core';
import 'package:mywebapp/widgets/ElementCard/cardInfo.dart';
import 'package:http/http.dart' as http;


class OverviewContentDesktop extends StatefulWidget {
  OverviewContentDesktop({Key key, this.title}) : super(key: key);
  final String title;

  @override
  OverviewContentDesktopState createState() => OverviewContentDesktopState();
}

class OverviewContentDesktopState extends State<OverviewContentDesktop> {

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
//        onPressed: (){
//          Navigator.push(context, MaterialPageRoute(builder: (context) => HomeView()) );
//        },
//        ),
//      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Divider(),
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
                    fontSize: 30,
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
                    child: Image.asset('/Users/benajasandrain/FlavrFood/lib/views/Overview/FoodSample/food1.png'),
                  ),
                  Expanded(
                    //flex: 1,
                    child: Image.asset('/Users/benajasandrain/FlavrFood/lib/views/Overview/FoodSample/food2.jpg'),
                  ),
                  Expanded(
                    //flex: 1,
                    child: Image.asset('/Users/benajasandrain/FlavrFood/lib/views/Overview/FoodSample/food5.jpg'),
                  ),
                  Expanded(
                    //flex: 1,
                    child: Image.asset('/Users/benajasandrain/FlavrFood/lib/views/Overview/FoodSample/food3.jpg'),
                  ),
                  Expanded(
                    //flex: 1,
                    child: Image.asset('/Users/benajasandrain/FlavrFood/lib/views/Overview/FoodSample/food4.jpg'),
                  ),
                ],
              ),
            ),
            Divider(),
            SizedBox(
              height: 250,
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
                 Expanded(child: ImageTheme('/Users/benajasandrain/FlavrFood/lib/views/Overview/FoodSample/food5.jpg')),
                 Expanded(child: ImageTheme('/Users/benajasandrain/FlavrFood/lib/views/Overview/FoodSample/food5.jpg')),
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

class ImageTheme extends StatelessWidget{
  String link;
  ImageTheme(String lk){
    link = lk;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: 100,
        height: 100,
        decoration: new BoxDecoration(
            shape: BoxShape.rectangle,
            image: new DecorationImage(
              //fit: BoxFit.fill,
                image: new AssetImage(link)
            )
        )
    );
  }
}