
import 'package:flutter/material.dart';
import 'package:mywebapp/account/login_signin.dart';
import 'package:mywebapp/drawers/navigation_drawer_header.dart';
import 'package:mywebapp/views/Overview/overview_content.dart';
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
      child: ListView(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          NavigationDrawerHeader(),
          SizedBox(
            height: 10,
          ),
          Container(
              width: 50.0,
              height: 50.0,
              decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                  image: new DecorationImage(
                      //fit: BoxFit.fill,
                      image: new NetworkImage(
                          'https://raw.githubusercontent.com/MyUnfold/FlavrFood/master/assets/userPic.png')
                  )
              )
          ),
          Text("\nName\n",
              textScaleFactor: 1.2),
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
              /// WHAT
            },
          ),
          SizedBox(
            height: 20,
          ),
          Text(
              "MENU"
          ),
          NavigationBarButton('Overview', Icon(Icons.track_changes), MaterialPageRoute(builder: (context) => OverviewContent())),
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