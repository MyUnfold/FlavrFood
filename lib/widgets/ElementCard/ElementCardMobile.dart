import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:core';
import 'package:mywebapp/widgets/ElementCard/cardInfo.dart';
import 'package:http/http.dart' as http;


class ElementCardMobile extends StatelessWidget{
  String cardName, message, image, code;
  String price;
  bool _selected;

  ElementCardMobile(String card, String mes, String img, String cde, String p){
    cardName = card;
    message = mes;
    image = img;
    code = cde;
    price = p;

    _selected = false;
  }
  @override
  Widget build(BuildContext context) {
//    var jsonString = json.
//    Map cardMap = jsonDecode(jsonString);
//    var card = CardInfo.fromJson(cardMap);
    // TODO: implement build
    return SizedBox(
      height: 100,
      width: 100,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
          child: Row(
            children: <Widget>[
              IconButton(icon: Icon(
              _selected ? Icons.star : Icons.star_border,
              color: _selected ? Colors.red : null, ),
                onPressed: () {
                setSelected();
                },
              ),
              Container(
                  width: 80.0,
                  height: 80.0,
                  decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      image: new DecorationImage(
                        //fit: BoxFit.fill,
                          image: new NetworkImage(image)  // "/Users/benajasandrain/FlavrFood/assets/userPic.png"
                      )
                  )
              ),
              Divider(),
              Expanded(
                child: SizedBox(
                  child: ListTile(
                    title: Text(
                      cardName + "\n\$ " + price,),
//                    trailing: Text(
//                        "\$ " + price
//                    ),
                    subtitle: Text(
                      message,
                    ),

                  ),
                ),
              ),
//              Text(
//                code,
//                style: TextStyle(
//                  color: Colors.amber,
//                ),
//              )
            ],
          ),
        ),
      ),
    );
  }

  bool isSelected (){
    return _selected;
  }

  void setSelected() {
    _selected = !_selected;
  }
}