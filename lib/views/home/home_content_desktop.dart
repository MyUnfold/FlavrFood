import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mywebapp/widgets/ElementCard/ElementCardDesktop.dart';
import 'package:mywebapp/widgets/ElementCard/SelectedCard.dart';
import 'package:mywebapp/widgets/NavigationBar/navigation_bar.dart';

import 'dart:convert';
import 'package:flutter/widgets.dart';
import 'dart:core';
import 'package:mywebapp/widgets/ElementCard/cardInfo.dart';
import 'package:http/http.dart' as http;


class HomeContentDesktop extends StatefulWidget {
  HomeContentDesktop({Key key, this.title}) : super(key: key);
  final String title;

  @override
  HomeContentDesktopState createState() => HomeContentDesktopState();
}

class HomeContentDesktopState extends State<HomeContentDesktop> {
  var now = new DateTime.now();


  bool isMeat = false;
  bool isVegan = false;
  bool isGluFree = false;


  List<CardInfo> _cards = List<CardInfo>();

  Future<List<CardInfo>> fetchInfo() async {
    var url = 'https://raw.githubusercontent.com/MyUnfold/FlavrFood/master/lib/widgets/ElementCard/menuList.json';
    var response = await http.get(url);

    var cards = List<CardInfo>();

    if (response.statusCode == 200){
      var cardsJson = json.decode(response.body);
      for (var cardJson in cardsJson) {
        cards.add(CardInfo.fromJson(cardJson));
      }
    }
    return cards;
  }

  @override
  void initState(){
    fetchInfo().then((value){
      setState(() {
        _cards.addAll(value);
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    String day = now.day.toString();
    String month = now.month.toString();
    String year = now.year.toString();
    String date = month + "/" +  day + "/" + year;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(
                  height: 50,
                  width: 500,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'search',
                      icon: Icon(Icons.search),
                    ),
//                    onChanged: (),
                  ),
                ),
                Switch(
                  value: isMeat,
                  onChanged: (value){
                    setState(() {
                      isMeat = !isMeat;
                    });
                  },
                  activeColor: Colors.green,

                ),
                Switch(
                  value: isVegan,
                  onChanged: (value){
                    setState(() {
                      isVegan = !isVegan;
                    });
                  },
                  activeColor: Colors.green,
                ),
                Switch(
                  value: isGluFree,
                  onChanged: (value){
                    setState(() {
                      isGluFree = !isGluFree;
                    });
                  },
                  activeColor: Colors.green,
                ),
              ],
            ),
          ),
           SizedBox(
            height: 30,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  flex: 3,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Expanded(
                              child: SizedBox(
                                child: Text(
                                  "Today's Options",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FontStyle.italic,
                                      fontSize: 35
                                  ),
                                ),
                              ),
                            ),
                            RaisedButton(
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(25)

                              ),
                              color: Colors.green,
                              child: Text(
                                "Compare Meals",
                                style: TextStyle(
                                  color: Colors.lightGreenAccent,
                                  fontWeight: FontWeight.w700,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              onPressed: (){
                                ///
                              },
                              hoverElevation: 0.0,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            RaisedButton(
                                shape: new RoundedRectangleBorder(
                                    borderRadius: new BorderRadius.circular(25)

                                ),
                              child: Text(
                                "Filter",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              color: Colors.white ,
                              onPressed: (){
                                  ///
                              },
                            ),
                            IconButton(
                              color: Colors.white,
                              icon: Icon(Icons.more,
                              color: Colors.black,),
                              onPressed: (){
                                ///
                              },
                            ),
                          ],
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "\n    Drag and drop meals to your list\n",
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        DefaultTabController(
                          length: 1,
                          child: Container(
                            alignment: Alignment.topLeft,
                            child: TabBar(
                              labelColor: Colors.black,
                              labelStyle: TextStyle(fontStyle: FontStyle.italic),
                              indicatorSize: TabBarIndicatorSize.label,
                              tabs: <Widget>[
                                Tab(text: "Main Plates"),
                              ],
                            ),
                          ),
                        ),
                        Divider(),
                      Expanded(
                        child: Container(
                          child: ListView.builder(
                            itemBuilder: (context, index) {
                            return ElementCardDesktop(_cards[index].cardName,
                                _cards[index].message, _cards[index].image, _cards[index].code,
                                _cards[index].price);
                            },
                            itemCount: _cards.length,
                          ),
                        ),
                      ),
                      ],
                    ),

                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.all(14.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text("Create your\nmeal plan",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        Text(
                          "\nfor " + date,
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Divider(),
                        Expanded(
                          child: Container(
                            child: ListView.builder(
                              itemBuilder: (context, index) {
                                return
                                  SelectedCard("Enter the name",
                                      "Enter the calories information",
                                      "https://raw.githubusercontent.com/MyUnfold/FlavrFood/master/assets/friedRice.jpg", "000",
                                      "0.00");
//                                  SelectedCard(_cards[index].cardName,
//                                    _cards[index].message, _cards[index].image, _cards[index].code,
//                                    _cards[index].price);
                              },
                              itemCount: 1, // _cards.length,
                            ),
                          ),
                        ),
                        Divider(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
          /// Content For the Page - DESKTOP -
        ],
      ),
    );
  }
}


class TabbarView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TabbarView(
    );
  }
}