import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:mywebapp/widgets/ElementCard/ElementCardDesktop.dart';
import 'package:mywebapp/widgets/ElementCard/ElementCardMobile.dart';
import 'package:mywebapp/widgets/ElementCard/cardInfo.dart';
import 'package:http/http.dart' as http;



class HomeContentMobile extends StatefulWidget {
  HomeContentMobile({Key key, this.title}) : super(key: key);
  final String title;

  @override
  HomeContentMobileState createState() => HomeContentMobileState();
}

class HomeContentMobileState extends State<HomeContentMobile> {
  final Set<ElementCardMobile> _saved = Set<ElementCardMobile>();

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
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(
                  height: 50,
                  width: 200,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'search',
                      icon: Icon(Icons.search),
                    ),
//                    onChanged: (),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            alignment: Alignment.center,
            child: Text("Today's Options",
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic,
                fontSize: 35),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              "\n    Select from the lsit below \n",
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          DefaultTabController(
            length: 1,
            child: Container(
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
                  return ElementCardMobile(_cards[index].cardName,
                      _cards[index].message, _cards[index].image, _cards[index].code,
                      _cards[index].price);
                },
                itemCount: _cards.length,
              ),
            ),
          ),
          /// Content For the Page - DESKTOP -
        ],
      ),
    );
  }
}
