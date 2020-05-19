import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:mywebapp/widgets/ElementCard/ElementCardMobile.dart';
import 'package:mywebapp/widgets/ElementCard/cardInfo.dart';
import 'package:http/http.dart' as http;

import 'package:mywebapp/widgets/ElementCard/SelectedCard.dart';


Set<ElementCardMobile> _savedItems = Set<ElementCardMobile>();

class HomeContentMobile extends StatefulWidget {
  HomeContentMobile({Key key, this.title}) : super(key: key);
  final String title;

  @override
  HomeContentMobileState createState() => HomeContentMobileState();
}

class HomeContentMobileState extends State<HomeContentMobile> {
  List<ElementCardMobile> _saved = List<ElementCardMobile>();
  bool cartIsModified = false;

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
                IconButton(
                  color: Colors.green,
                  icon: Icon(Icons.local_grocery_store,
                  color: Colors.green,
                  size: 30,),
                  onPressed: (){
                    /// What to do on pressed
//                    setState(() {
//                      if (!cartIsModified){
//                        FillSavedElement();
//                        cartIsModified = !cartIsModified;
//                      }
//                    });
                    Scaffold.of(context).openEndDrawer();
                  },
                )
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
              "\n    Select from the list below \n",
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
                  ElementCardMobile card = new ElementCardMobile(_cards[index].cardName,
                      _cards[index].message, _cards[index].image, _cards[index].code,
                      _cards[index].price);
                  _saved.add(card);
                  _savedItems.add(card);
                  return card;
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
//  void FillSavedElement(){
//    for (int i = 0; i < _saved.length; i++){
//      if (_saved[i].isSelected())
//       {
//         _savedItems.add(_saved[i]);
//       }
////      _savedItems.add(_saved[i]);
//    }
//  }
}


class CheckOutDrawer extends StatefulWidget{

  @override
  CheckOutDrawerState createState() => CheckOutDrawerState();
}

class CheckOutDrawerState extends State<CheckOutDrawer> {
  var now = new DateTime.now();

  List<ElementCardMobile> myList = List<ElementCardMobile>();

  @override
  void initState(){
      setState(() {
        for(ElementCardMobile card in _savedItems){
          myList.add(card);
        }
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    String day = now.day.toString();
    String month = now.month.toString();
    String year = now.year.toString();
    String date = month + "/" +  day + "/" + year;

    return Container(
      width: 250,
      color: Colors.grey,
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
                    SelectedCard(myList[index].cardName,
                        myList[index].message, myList[index].image, myList[index].code,
                        myList[index].price);
                },
                itemCount: _savedItems.length,
              ),
            ),
          ),
          Divider(),
        ],
      ),

    );
  }
}
