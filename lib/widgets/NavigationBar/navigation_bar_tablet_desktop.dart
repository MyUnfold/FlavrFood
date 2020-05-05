import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:mywebapp/account/account_manager.dart';
import 'package:mywebapp/account/loginAlert.dart';
import 'package:mywebapp/account/login_signin.dart';
import 'package:mywebapp/main.dart';
import 'package:mywebapp/views/home/home_view.dart';
import 'package:mywebapp/widgets/NavigationBar/navbar_logo.dart';
import 'package:mywebapp/widgets/NavigationBar/navigation_bar_buttons.dart';
import 'package:rflutter_alert/rflutter_alert.dart';


class NavigationBarTabletDesktop extends StatefulWidget{
  @override
  NavigationBarTabletDesktopState createState() => NavigationBarTabletDesktopState();
}

class NavigationBarTabletDesktopState extends State<NavigationBarTabletDesktop> {
  NavigationBarTabletDesktopState();

  createAlertDialog (BuildContext context){
    AccountAlert login = new AccountAlert(context);
    login.registerNow();
//    return showDialog(
//        barrierDismissible: true,
//        useRootNavigator: false,
//        context: context,
//        builder: (context){
//      return LogInAlert();
//      }
//    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 15.0),
      color: Colors.grey,
      child: ListView(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          IconButton(icon: Icon(Icons.shopping_basket),
            color: Colors.green,
            onPressed: (){
              /// what do to when pressed
            },
          ),
          Container(
              width: 50.0,
              height: 60.0,
              decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                  image: new DecorationImage(
                      //fit: BoxFit.fill,
                      image: new AssetImage(
                          "/Users/benajasandrain/FlavrFood/assets/userPic.png")
                  )
              )
          ),
          Text("\nNO USER\n",
              textScaleFactor: 1.2
          ),
          RaisedButton(
            shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(25)
            ),
            color: Colors.green,
            child: Text(
              "Get Started",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
            onPressed: (){
              if (LogInAlert().alreadylogged){
                return null;
              }
              else {
                createAlertDialog(context);
                //Navigator.pop(context);
              }
            },
          ),
          SizedBox(
            height: 20,
          ),
          Text(
              "MENU"
          ),
          NavigationBarButton('Overview', Icon(Icons.track_changes), MaterialPageRoute(builder: (context) => HomeView())),
          NavigationBarButton('Meals', Icon(Icons.fastfood), MaterialPageRoute(builder: (context) => HomeView())),
          NavigationBarButton('Account', Icon(Icons.account_circle), MaterialPageRoute(builder: (context) => HomeView())),
          NavigationBarButton('History', Icon(Icons.history), MaterialPageRoute(builder: (context) => HomeView())),
          NavigationBarButton('Schedule', Icon(Icons.calendar_today), MaterialPageRoute(builder: (context) => HomeView())),
          SizedBox(
            height: 20,
          ),
          Text(
              "COMMUNITY"
          ),
          NavigationBarButton('reviews', Icon(Icons.note), MaterialPageRoute(builder: (context) => HomeView())),

          SizedBox(
            height: 80,
          ),
          FlatButton.icon(
              icon: Icon(
                  Icons.exit_to_app
              ),
              label: Text (" Log out"),
              onPressed: (){

                /// what to do on pressed
              }
          ),
        ],
      ),
    );
  }
}
