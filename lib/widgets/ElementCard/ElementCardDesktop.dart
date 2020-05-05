import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ElementCardDesktop extends StatefulWidget{
  String cardName, message;
  int price;
  List<String> category;

  @override
  ElementCardDesktopState createState() => ElementCardDesktopState();
}

class ElementCardDesktopState extends State<ElementCardDesktop>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
      child: Card(
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
                        image: new AssetImage(
                            "/Users/benajasandrain/FlavrFood/assets/userPic.png")
                    )
                )
            ),
            Divider(),
            Column(
              children: <Widget>[
//                Text(
//                  cardName,
//                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
