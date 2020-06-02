import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mywebapp/widgets/ElementCard/ElementCardAlert.dart';
import 'dart:core';
import 'package:mywebapp/widgets/ElementCard/cardInfo.dart';
import 'package:http/http.dart' as http;

class ElementCardDesktop extends StatefulWidget{
  String cardName, message, image, code;
  String price;

  ElementCardDesktop(String card, String mes, String img, String cde, String p){
    cardName = card;
    message = mes;
    image = img;
    code = cde;
    price = p;
  }

  @override
  ElementCardDesktopState createState() =>
      ElementCardDesktopState(cardName, message, image, code, price);
}

class ElementCardDesktopState extends State<ElementCardDesktop>{
  String cardName, message, image, code;
  String price;
  bool _selected;

  //Icon selectIcon = Icon(Icons.radio_button_unchecked);

  ElementCardDesktopState(String card, String mes, String img, String cde, String p){
    cardName = card;
    message = mes;
    image = img;
    code = cde;
    price = p;

    _selected = false;
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
            padding: const EdgeInsets.only(top: 16.0, bottom: 16.0, right: 16.0),
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
                            image: new NetworkImage(image),
                        )
                    )
                ),
                Divider(),
                Expanded(
                  child: SizedBox(
                    child: ListTile(
                      title:
                      Text(
                        cardName ,//    cardName + "\n\$ " + price,
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
                Text(
                  code,
                  style: TextStyle(
                    color: Colors.amber,
                  ),
                )
              ],
            ),
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


/*


Card(
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
                                                image: new AssetImage("/Users/benajasandrain/FlavrFood/assets/userPic.png")  // "/Users/benajasandrain/FlavrFood/assets/userPic.png"
                                            )
                                        )
                                    ),
                                    Divider(),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start ,
                                      children: <Widget>[
                                        ListTile(
                                          title: Text(
                                            "cardName",),
                                          trailing: Text(
                                              "\$" + "price"
                                          ),
                                          subtitle: Text(
                                            "message",
                                          ),
                                        ),
                                        Text(
                                          "code",
                                          style: TextStyle(
                                            color: Colors.amber,
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            );
 */