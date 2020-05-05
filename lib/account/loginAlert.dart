import 'package:mywebapp/account/sign_up_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:flutter/widgets.dart';

import 'package:mywebapp/views/home/home_view.dart';
import 'package:validators/validators.dart' as validator;



class AccountAlert extends StatelessWidget {

  BuildContext actualContext;

  AccountAlert(BuildContext cntxt) {
    actualContext = cntxt;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }

  void registerNow() {
    bool alreadylogged = false;
    bool loggedState() => alreadylogged;
    void toggleState() => alreadylogged = !alreadylogged;

    final _formKeySignIn = GlobalKey<FormState>();
    final _formKeyLogIn = GlobalKey<FormState>();
    SignUpModel signupmodel = SignUpModel();
    LogInModel loginpmodel = LogInModel();

    Alert(
        closeFunction: () {},
        context: actualContext,
        title: "Sign in",
        content: Container(
          height: 300,
          width: 250,
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
//                Expanded(
//                  child: Text(
//                    "Welcome to Flavr Food",
//                    style: TextStyle(
//                      fontWeight: FontWeight.w600,
//                      fontSize: 30,
//                      fontStyle: FontStyle.italic,
//                    ),
//                  ),
//                ),
//                Expanded(
//                  child: Text(
//                    "Log In",
//                    style: TextStyle(
//                      fontWeight: FontWeight.w600,
//                      fontSize: 20,
//                      fontStyle: FontStyle.italic,
//                    ),
//                  ),
//                ),

              OutsideLogin(
                  "  Sign in with FaceBook", Colors.blue, Colors.white, null, "/Users/benajasandrain/FlavrFood/assets/facebookpath.png"),
              Expanded(child: SizedBox(height: 3,),),
              OutsideLogin(
                  "  Sign in with Google", Colors.redAccent, Colors.black, null, "/Users/benajasandrain/FlavrFood/assets/googlepath.png"),
              Expanded(child: SizedBox(height: 3,),),
              OutsideLogin(
                  "  Sign in with Apple", Colors.black, Colors.white, null, "/Users/benajasandrain/FlavrFood/assets/applepath.png"),
              Expanded(child: SizedBox(height: 20,),),
              Expanded(
                child: FlatButton(
                  child: Text(
                    "link to disclamer",
                    textAlign: TextAlign.center,
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
        buttons: [
//          DialogButton(
//            color: Colors.blueAccent,
//            onPressed: () {
//              if (_formKeyLogIn.currentState.validate()) {
//                _formKeyLogIn.currentState.save();
//                Navigator.push(
//                    context,
//                    MaterialPageRoute(
//                        builder: (context) => HomeView()));
//              }
//            },
//            child: Text(
//              'Log In',
//              style: TextStyle(
//                color: Colors.white,
//              ),
//            ),
//          ),
        ]
    ).show();
  }

}

class SignInField extends StatelessWidget { //StatefulWidget{
  final String hintText;
  final Function validator;
  final Function onSaved;
  final bool isPassword;
  final bool isEmail;

  SignInField({
    this.hintText,
    this.validator,
    this.onSaved,
    this.isPassword = false,
    this.isEmail = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
          contentPadding: EdgeInsets.all(15.0),
          border: InputBorder.none,
          filled: true,
          fillColor: Colors.grey[200],
        ),
        obscureText: isPassword ? true : false,
        validator: validator,
        onSaved: onSaved,
        keyboardType: isEmail ? TextInputType.emailAddress : TextInputType.text,
      ),
    );
  }
}

class LogInField extends StatelessWidget { //StatefulWidget{
  final String hintText;
  final Function validator;
  final Function onSaved;
  final bool isPassword;
  final bool isEmail;

  LogInField({
    this.hintText,
    this.validator,
    this.onSaved,
    this.isPassword = false,
    this.isEmail = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
          contentPadding: EdgeInsets.all(15.0),
          border: InputBorder.none,
          filled: true,
          fillColor: Colors.grey[200],
        ),
        obscureText: isPassword ? true : false,
        validator: validator,
        onSaved: onSaved,
        keyboardType: isEmail ? TextInputType.emailAddress : TextInputType.text,
      ),
    );
  }
}

class OutsideLogin extends StatelessWidget{

  String text, imageLink;
  Color fontColor, textColor;
  Route alert;

  OutsideLogin (String txt, Color fcolor, Color tcolor, Route alrt, String img){
    text = txt;
    fontColor = fcolor;
    textColor = tcolor;
    alert = alrt;
    imageLink = img;
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Expanded(
      child: SizedBox(
        width: 200,
        child: RaisedButton(
          color: fontColor,
          shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(18.0),
            //side: BorderSide(color: Colors.red)
          ),
          child: Row(
            children: <Widget>[
            Container(
                width: 12,
                height: 24,
                decoration: BoxDecoration(
                  image: new DecorationImage(
                  colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.6), BlendMode.dstATop),
                  image: new AssetImage(imageLink),
                  //fit: BoxFit.cover,
                  ),
                ),
            ),
            Text( text,
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: textColor,
              ),
            ),
            ],
          ),
          onPressed: () {
          },
        ),
      ),
    );
  }
}
