import 'package:flutter/material.dart';
import 'package:mywebapp/AppBarNavigator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget mainPage = Center(child: Text(
    "Flavor Food",
    style: TextStyle(fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
    textScaleFactor: 5,
  ),
  );
  @override
  Widget build(BuildContext context) {
    var container = Container( // grey box
      child: Text(
        "Lorem ipsum",
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          fontFamily: "Georgia",
        ),
      ),
    );

    return Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(icon: Icon(Icons.list),
                color: Colors.black,
                onPressed: (){
                  /// what do to when pressed
                },
              ),
              FlatButton(
                  child: Text(
                    "OUR STORY",
                    textAlign: TextAlign.center,
                    style: TextStyle (fontWeight: FontWeight.w900),
                  ),
                  onPressed: (){
                    /// what to do on pressed
                  }
              ),
              FlatButton(
                  child: Text(
                    "GIFTS",
                    textAlign: TextAlign.center,
                    style: TextStyle (fontWeight: FontWeight.w900),
                  ),
                  onPressed: (){
                    /// what to do on pressed
                  }
              ),
              FlatButton(
                child: Text(
                  "Flavor Food",
                  style: TextStyle(
                    fontSize:  24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                onPressed: (){
                  setState(() {
                    mainPage = Center(child: Text(
                      "Flavor Food",
                      style: TextStyle(fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
                      textScaleFactor: 5,
                    ),
                    );
                  });
                  /// what to do when pressed
                },
              ),
              FlatButton(
                  child: Text(
                    "LOGIN",
                    textAlign: TextAlign.center,
                    style: TextStyle (fontWeight: FontWeight.w900),
                  ),
                  onPressed: (){
                    /// what to do on pressed
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LogInPage()));
                  }
              ),
              FlatButton(
                  child: Text(
                    "HELP",
                    textAlign: TextAlign.center,
                    style: TextStyle (fontWeight: FontWeight.w900),
                  ),
                  onPressed: (){
                    /// what to do on pressed
                  }
              ),
              FlatButton(
                  child: Text(
                    "GET STARTED",
                    textAlign: TextAlign.center,
                    style: TextStyle (fontWeight: FontWeight.w900),
                  ),
                  onPressed: (){
                    /// what to do on pressed
                  }
              ),
            ],
          ),
          backgroundColor: Colors.white,
        ),
//        AppBar(),


        body: mainPage,
    );
  }
}



class LogInPage extends StatefulWidget{
  @override
  LogInPageState createState() => LogInPageState();
}

class LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.lightBlueAccent,
        appBar: AppBar(
          title: Text("Log In"),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
              ]
          ),
        )
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
    return Scaffold(
        appBar: AppBar(
          title: Text("Sign Up"),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
              ]
          ),
        )
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
