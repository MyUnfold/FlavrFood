import 'package:mywebapp/account/sign_up_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:flutter/widgets.dart';

import 'package:mywebapp/views/home/home_view.dart';
import 'package:validators/validators.dart' as validator;



class ElementCardAlert extends StatelessWidget {

  BuildContext actualContext;
  String cardName, message, image, code;
  String price;

  ElementCardAlert(BuildContext cntxt, String card, String mes, String img, String cde, String p ) {
    actualContext = cntxt;
    cardName = card;
    message = mes;
    image = img;
    code = cde;
    price = p;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }

  void showTheCardInfo() {
    Alert(
        closeFunction: () {},
        context: actualContext,
        title: "info",
        content: Container(
          height: 300,
          width: 250,
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Container(
                    width: 160.0,
                    height: 160.0,
                    decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                          //fit: BoxFit.fill,
                            image: new NetworkImage(image)
                        )
                    )
                ),
              ),
              Expanded(child: SizedBox(height: 20,),),
              Expanded(
                child: Text(
                  cardName,
                  style: TextStyle(
                    fontWeight: FontWeight.w200,
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Expanded(
                child: Text(
                  message,
                  style: TextStyle(
                    fontWeight: FontWeight.w200,
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Expanded(child: SizedBox(height: 20,),),
//              Expanded(
//                child: FlatButton(
//                  child: Text(
//                    "link to disclamer",
//                    textAlign: TextAlign.center,
//                  ),
//                  onPressed: () {},
//                ),
//              ),
            ],
          ),
        ),
        buttons: [
        ]
    ).show();
  }

}
