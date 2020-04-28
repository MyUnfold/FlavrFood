//import 'package:flutter/widgets.dart';
//import 'package:flutter/material.dart';
//import 'package:mywebapp/drawers/Navigation_drawer.dart';
//import 'package:mywebapp/widgets/LowerNavigation/lower_navigation.dart';
//import 'package:responsive_builder/responsive_builder.dart';
//import 'package:mywebapp/widgets/NavigationBar/navigation_bar.dart';
//
//class LogInPage extends StatefulWidget{
//  LogInPage(){
//
//  }
//  @override
//  LogInPageState createState() => LogInPageState();
//}
//
//class LogInPageState extends State<LogInPage> {
//  @override
//  Widget build(BuildContext context) {
//    return
//      ResponsiveBuilder(
//        builder: (context, sizingInformation) => Scaffold(
//          drawer: sizingInformation.deviceScreenType ==
//            DeviceScreenType.Mobile ? NavigationDrawer() : null,
//        body: Column(
//            mainAxisAlignment: MainAxisAlignment.spaceBetween,
//            children: <Widget>[
//              NavigationBar(),
//              CustomScrollView(
//                slivers: <Widget>[
//                  const SliverAppBar(
//                    title: Text('Log IN'),
//                  ),
//                SliverList(
//                  delegate: SliverChildListDelegate(
//                    <Widget>[
//                      Expanded(
//                        child: Container(
//                            child: Column(
//                              mainAxisAlignment: MainAxisAlignment.center,
//                              children: <Widget>[
//                                Text(
//                                  "LOG IN",
//                                  style: TextStyle(
//                                    fontSize: 35,
//                                    fontWeight: FontWeight.bold,
//                                    fontStyle: FontStyle.italic,
//                                  ),
//                                  textAlign: TextAlign.center,
//                                ),
//                                SizedBox(height: 25.0),
//                                InputText("Username", false),
//                                SizedBox(height: 8.0),
//                                InputText("password", true),
//                                SizedBox(height: 8.0),
//                                RaisedButton(
//                                  shape: new RoundedRectangleBorder(
//                                    borderRadius: new BorderRadius.circular(18.0),
//                                    //side: BorderSide(color: Colors.red)
//                                  ),
//                                  child: Text('Log In',
//                                    style: TextStyle(fontStyle: FontStyle.italic),
//                                  ),
//                                  onPressed: () {
//                                    /// Navigation after login
//                                  },
//                                ),
//                                FlatButton(
//                                  child: Text(
//                                    "Don't have an account? sign up here",
//                                    textAlign: TextAlign.center,
//                                  ),
//                                  onPressed: (){
//                                    Navigator.pop(context);
//                                    Navigator.push(
//                                      context,
//                                      MaterialPageRoute(builder: (context) => signUpPage()),
//                                    );
//                                  },
//                                ),
//                              ],
//                            )
//                        ),
//                      ),
//                      SizedBox(
//                        height: 150,
//                      ),
//                      LowerNavigation(),
//                    ]
//                  ),
//                ),
//                ],
//              ),
//            ],
//          ),
//        )
//    );
//  }
//}
//
//
//class signUpPage extends StatefulWidget{
//  @override
//  signUpPageState createState() => signUpPageState();
//}
//
//class signUpPageState extends State<signUpPage>{
//  @override
//  Widget build(BuildContext context){
//    return
//      ResponsiveBuilder(
//        builder: (context, sizingInformation) => Scaffold(
//      drawer: sizingInformation.deviceScreenType ==
//          DeviceScreenType.Mobile ? NavigationDrawer() : null,
//        body:Column(
//            mainAxisAlignment: MainAxisAlignment.spaceBetween,
//            children: <Widget> [
//              NavigationBar(),
//              CustomScrollView(
//                slivers: <Widget>[
//                  SliverList(
//                    delegate: SliverChildListDelegate(
//                      <Widget>[
//                        Expanded(
//                          child: Container(
//                            child: Column(
//                              mainAxisAlignment: MainAxisAlignment.center,
//                              children: <Widget>[
//                                Text(
//                                  "SIGN UP",
//                                  style: TextStyle(
//                                    fontSize: 35,
//                                    fontWeight: FontWeight.bold,
//                                    fontStyle: FontStyle.italic,
//                                  ),
//                                  textAlign: TextAlign.center,
//                                ),
//                                SizedBox(height: 25.0),
//                                InputText("Full Name", false),
//                                SizedBox(height: 8.0),
//                                InputText("Username", false),
//                                SizedBox(height: 8.0),
//                                InputText("password", true),
//                                SizedBox(height: 8.0),
//                                RaisedButton(
//                                  shape: new RoundedRectangleBorder(
//                                    borderRadius: new BorderRadius.circular(18.0),
//                                    //side: BorderSide(color: Colors.red)
//                                  ),
//                                  child: Text('Sign up',
//                                    style: TextStyle(fontStyle: FontStyle.italic),
//                                  ),
//                                  onPressed: () {
//                                    // Navigate to Main Page route when tapped.
//                                  },
//                                ),
//                                FlatButton(
//                                  child: Text(
//                                    "Already Registered? Log In here",
//                                    textAlign: TextAlign.center,
//                                  ),
//                                  onPressed: (){
//                                    Navigator.push(
//                                      context,
//                                      MaterialPageRoute(builder: (context) => LogInPage()),
//                                    );
//                                  },
//                                ),
//                              ],
//                            ),
//                          ),
//                        ),
//                        LowerNavigation(),
//                      ],
//                    ),
//                  ),
//                ],
//              ),
//            ]
//          ),
//        )
//    );
//  }
//}
//
//
//class InputText extends StatelessWidget{
//
//  String text ;
//  bool obscure ;
//
//  InputText(String name, bool flag){
//    text = name;
//    obscure = flag;
//  }
//  @override
//  Widget build(BuildContext context) {
//    // TODO: implement build
//    return  Container(
//      width: 300.0,
//      color: Colors.white,
//      child: new TextField(
//        obscureText: obscure,
//        decoration: InputDecoration(
//          hoverColor: Colors.red,
//          border: OutlineInputBorder(),
//          hintText: text,
//        ),
//        style: new TextStyle(
//          fontSize: 15.0,
//          height: 1.0,
//        ),
//      ),
//    );
//  }
//}




import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:mywebapp/drawers/Navigation_drawer.dart';
import 'package:mywebapp/widgets/LowerNavigation/lower_navigation.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:mywebapp/widgets/NavigationBar/navigation_bar.dart';

class LogInPage extends StatefulWidget{
  LogInPage(){

  }
  @override
  LogInPageState createState() => LogInPageState();
}

class LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    return
      ResponsiveBuilder(
          builder: (context, sizingInformation) => Scaffold(
            drawer: sizingInformation.deviceScreenType ==
                DeviceScreenType.Mobile ? NavigationDrawer() : null,
            body:
                CustomScrollView(
                  slivers: <Widget>[
                    SliverList(
                      delegate: SliverChildListDelegate(
                          <Widget>[
                            NavigationBar(),
                            SizedBox(
                              height: 100,
                            ),
                            Expanded(
                              child: Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        "LOG IN",
                                        style: TextStyle(
                                          fontSize: 35,
                                          fontWeight: FontWeight.bold,
                                          fontStyle: FontStyle.italic,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                      SizedBox(height: 25.0),
                                      InputText("Username", false),
                                      SizedBox(height: 8.0),
                                      InputText("password", true),
                                      SizedBox(height: 8.0),
                                      RaisedButton(
                                        shape: new RoundedRectangleBorder(
                                          borderRadius: new BorderRadius.circular(18.0),
                                          //side: BorderSide(color: Colors.red)
                                        ),
                                        child: Text('Log In',
                                          style: TextStyle(fontStyle: FontStyle.italic),
                                        ),
                                        onPressed: () {
                                          /// Navigation after login
                                        },
                                      ),
                                      FlatButton(
                                        child: Text(
                                          "Don't have an account? sign up here",
                                          textAlign: TextAlign.center,
                                        ),
                                        onPressed: (){
                                          Navigator.pop(context);
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => signUpPage()),
                                          );
                                        },
                                      ),
                                    ],
                                  )
                              ),
                            ),
                            SizedBox(
                              height: 150,
                            ),
                          ]
                      ),
                    ),
                  ],
                ),
          ),
      );
  }
}


class signUpPage extends StatefulWidget{
  @override
  signUpPageState createState() => signUpPageState();
}

class signUpPageState extends State<signUpPage>{
  @override
  Widget build(BuildContext context){
    return
      ResponsiveBuilder(
          builder: (context, sizingInformation) => Scaffold(
            drawer: sizingInformation.deviceScreenType ==
                DeviceScreenType.Mobile ? NavigationDrawer() : null,
            body:
                  CustomScrollView(
                    slivers: <Widget>[
                      SliverList(
                        delegate: SliverChildListDelegate(
                          <Widget>[
                            NavigationBar(),
                            SizedBox(
                              height: 100,
                            ),
                            Expanded(
                              child: Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      "SIGN UP",
                                      style: TextStyle(
                                        fontSize: 35,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle.italic,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    SizedBox(height: 25.0),
                                    InputText("Full Name", false),
                                    SizedBox(height: 8.0),
                                    InputText("Username", false),
                                    SizedBox(height: 8.0),
                                    InputText("password", true),
                                    SizedBox(height: 8.0),
                                    RaisedButton(
                                      shape: new RoundedRectangleBorder(
                                        borderRadius: new BorderRadius.circular(18.0),
                                        //side: BorderSide(color: Colors.red)
                                      ),
                                      child: Text('Sign up',
                                        style: TextStyle(fontStyle: FontStyle.italic),
                                      ),
                                      onPressed: () {
                                        // Navigate to Main Page route when tapped.
                                      },
                                    ),
                                    FlatButton(
                                      child: Text(
                                        "Already Registered? Log In here",
                                        textAlign: TextAlign.center,
                                      ),
                                      onPressed: (){
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => LogInPage()),
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
          ),
      );
  }
}


class InputText extends StatelessWidget{

  String text ;
  bool obscure ;

  InputText(String name, bool flag){
    text = name;
    obscure = flag;
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Container(
      width: 300.0,
      color: Colors.white,
      child: new TextField(
        obscureText: obscure,
        decoration: InputDecoration(
          hoverColor: Colors.red,
          border: OutlineInputBorder(),
          hintText: text,
        ),
        style: new TextStyle(
          fontSize: 15.0,
          height: 1.0,
        ),
      ),
    );
  }
}
