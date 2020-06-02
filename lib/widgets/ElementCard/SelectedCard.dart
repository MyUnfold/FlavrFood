import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:core';
import 'package:mywebapp/widgets/ElementCard/cardInfo.dart';
import 'package:http/http.dart' as http;


class SelectedCard extends StatefulWidget{
  String cardName, message, image, code;
  String price;

  SelectedCard(String card, String mes, String img, String cde, String p){
    cardName = card;
    message = mes;
    image = img;
    code = cde;
    price = p;
  }

  @override
  SelectedCardState createState() =>
      SelectedCardState(cardName, message, image, code, price);
}


class SelectedCardState extends State<SelectedCard>{
  String cardName, message, image, code;
  String price;
  bool _selected;

  SelectedCardState(String card, String mes, String img, String cde, String p){
    cardName = card;
    message = mes;
    image = img;
    code = cde;
    price = p;

    _selected = false;
  }
  @override
  Widget build(BuildContext context) {
    Container leadingImage = Container(
        width: 35.0,
        height: 35.0,
        decoration: new BoxDecoration(
            shape: BoxShape.circle,
            image: new DecorationImage(
              //fit: BoxFit.fill,
                image: new NetworkImage(image)
            )
        )
    );
    // TODO: implement build
    return SizedBox(
      height: 70,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
//            Expanded(
//              child:
//            ),
            Expanded(
              child: SizedBox(
                child: ListTile(
                  leading: leadingImage,
                  title: Text(
                    cardName,   //cardName + "\n\$ " + price,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                   ),
                  ),
                  subtitle: Text(
                    message,
                    style: TextStyle(
                      fontSize: 7
                    ),
                  ),
                  trailing: IconButton(
                    icon: Icon(
                      Icons.delete_outline,
                      size: 14,
                    ),
                    focusColor: Colors.red,
                    onPressed: () {
                      setSelected();
                    },
                  ),
                ),
              ),
            ),
          ],
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