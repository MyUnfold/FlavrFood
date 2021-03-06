import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mywebapp/widgets/ElementCard/ElementCardAlert.dart';
import 'dart:core';
import 'package:mywebapp/widgets/ElementCard/cardInfo.dart';
import 'package:http/http.dart' as http;

bool _selected = false;

class ElementCardMobile extends StatefulWidget{
  String cardName, message, image, code;
  String price;

  ElementCardMobile(String card, String mes, String img, String cde, String p){
    cardName = card;
    message = mes;
    image = img;
    code = cde;
    price = p;
  }

  bool isSelected (){
    return _selected;
  }

  @override
  ElementCardMobileState createState() =>
      ElementCardMobileState(cardName, message, image, code, price);
}


class ElementCardMobileState extends State<ElementCardMobile>{
  String cardName, message, image, code;
  String price;


  ElementCardMobileState(String card, String mes, String img, String cde, String p){
    cardName = card;
    message = mes;
    image = img;
    code = cde;
    price = p;
  }

  createAlertDialog (BuildContext context){
    ElementCardAlert cardInfo = new ElementCardAlert(context, cardName, message, image, code, price);
    cardInfo.showTheCardInfo();
  }

  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return SizedBox(
      height: 100,
      width: 100,
      child: FlatButton(
        onPressed: (){
          createAlertDialog(context);
        },
        child: Card(
          child: Padding(
            padding: const EdgeInsets.only(top: 16.0, bottom: 16.0),
            child: Row(
              children: <Widget>[
                IconButton(icon: Icon(
                _selected ? Icons.radio_button_checked : Icons.radio_button_unchecked,
                color: _selected ? Colors.green : null, ),
                  onPressed: () {
                    setState(() {
                      setSelected();
                    });
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
                        cardName ,      //cardName + "\n\$ " + price,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),),
                      subtitle: Text(
                        message,
                          style: TextStyle(
                            fontSize: 10,
                          )
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
      ),
    );
  }
  void setSelected() {
    _selected = !_selected;
  }
}