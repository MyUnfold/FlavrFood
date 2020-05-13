import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:core';
import 'package:mywebapp/widgets/ElementCard/cardInfo.dart';
import 'package:http/http.dart' as http;

//class ElementCardDesktop extends StatefulWidget{
//  String cardName, message;
//  int price;
//  List<String> category;
//
//  @override
//  ElementCardDesktopState createState() => ElementCardDesktopState();
//}

class ElementCardDesktop extends StatelessWidget{
  String cardName, message, image, code;
  int price;
  //var user = User.fromJson(userMap);

  Future FetchInfo() async {

  }

  ElementCardDesktop(String card, String mes, String img, String cde, int p){
    cardName = card;
    message = mes;
    image = img;
    code = cde;
    price = p;
  }
  @override
  Widget build(BuildContext context) {
//    var jsonString = json.
//    Map cardMap = jsonDecode(jsonString);
//    var card = CardInfo.fromJson(cardMap);
    // TODO: implement build
    return SizedBox(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
          child: Row(
            children: <Widget>[
              IconButton(icon: Icon(Icons.drag_handle)),
              Container(
                  width: 50.0,
                  height: 50.0,
                  decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      image: new DecorationImage(
                        //fit: BoxFit.fill,
                          image: new AssetImage(image)  // "/Users/benajasandrain/FlavrFood/assets/userPic.png"
                      )
                  )
              ),
              Divider(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start ,
                children: <Widget>[
                  ListTile(
                    title: Text(
                      cardName,),
                    trailing: Text(
                      "\$" + price.toString()
                    ),
                    subtitle: Text(
                      message,
                    ),
                  ),
                  Text(
                    code,
                    style: TextStyle(
                      color: Colors.amber,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
