
import 'package:flutter/material.dart';
import 'package:mywebapp/account/login_signin.dart';
import 'package:mywebapp/drawers/navigation_drawer_header.dart';
import 'package:mywebapp/widgets/NavigationBar/navigation_bar_buttons.dart';
import 'package:mywebapp/views/home/home_view.dart';
import 'package:mywebapp/account/loginAlert.dart';



class NavigationDrawer extends StatefulWidget{
  @override
  NavigationDrawerState createState() => NavigationDrawerState();
}

class NavigationDrawerState extends State<NavigationDrawer> {

  createAlertDialog (BuildContext context){
    AccountAlert login = new AccountAlert(context);
    login.registerNow();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      width: 175,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 16)]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          NavigationDrawerHeader(),
          Expanded(
            child: Container(
                width: 50.0,
                height: 50.0,
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
            child: Text("Name",
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
                /// WHAT
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