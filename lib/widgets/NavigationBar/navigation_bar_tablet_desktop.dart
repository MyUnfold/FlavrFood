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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: IconButton(icon: Icon(Icons.shopping_basket),
              color: Colors.green,
              onPressed: (){
                /// what do to when pressed
              },
            ),
          ),
          Expanded(
            child: Container(
                width: 50.0,
                height: 60.0,
                decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                        fit: BoxFit.fill,
                        image: new AssetImage(
                            "/Users/benajasandrain/FlavrFood/lib/assets/userLogo.png")
                    )
                )
            ),
          ),
          Expanded(
            child: Text("NO USER",
                textScaleFactor: 1.2),
          ),
          Expanded(
            child: RaisedButton(
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
          ),
          Expanded(
            child: SizedBox(
              height: 20,
            ),
          ),
          Expanded(
            child: Text(
                "MENU"
            ),
          ),
          Expanded(
            child: NavigationBarButton('Overview', Icon(Icons.track_changes), MaterialPageRoute(builder: (context) => HomeView())),
          ),
          Expanded(
            child: NavigationBarButton('Meals', Icon(Icons.fastfood), MaterialPageRoute(builder: (context) => HomeView())),
          ),
          Expanded(
            child: NavigationBarButton('Account', Icon(Icons.account_circle), MaterialPageRoute(builder: (context) => HomeView())),
          ),
          Expanded(
            child: NavigationBarButton('History', Icon(Icons.history), MaterialPageRoute(builder: (context) => HomeView())),
          ),
          Expanded(
            child: NavigationBarButton('Schedule', Icon(Icons.calendar_today), MaterialPageRoute(builder: (context) => HomeView())),
          ),
          Expanded(
            child: SizedBox(
              height: 20,
            ),
          ),
          Expanded(
            child: Text(
                "COMMUNITY"
            ),
          ),
          Expanded(
            child: NavigationBarButton('reviews', Icon(Icons.note), MaterialPageRoute(builder: (context) => HomeView())),
          ),

          Expanded(
            child: SizedBox(
              height: 80,
            ),
          ),
          Expanded(
            child: FlatButton.icon(
                icon: Icon(
                    Icons.exit_to_app
                ),
                label: Text (" Log out"),
                onPressed: (){

                  /// what to do on pressed
                }
            ),
          ),
        ],
      ),
    );
  }
}
