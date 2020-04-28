import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:mywebapp/account/sign_up_model.dart';
import 'package:mywebapp/views/home/home_view.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:validators/validators.dart' as validator;
import 'package:mywebapp/drawers/Navigation_drawer.dart';
import 'package:mywebapp/widgets/LowerNavigation/lower_navigation.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:mywebapp/widgets/NavigationBar/navigation_bar.dart';

class LogInAlert extends StatefulWidget{
  bool alreadylogged = false;

  LogInAlert(){
  }

  bool loggedState() => LogInAlertState().loggedState();
  @override
  LogInAlertState createState() => LogInAlertState();
}

class LogInAlertState extends State<LogInAlert> {
  bool alreadylogged = false;
  bool loggedState() => alreadylogged;
  void toggleState() => alreadylogged = !alreadylogged;

  final _formKeySignIn = GlobalKey<FormState>();
  final _formKeyLogIn = GlobalKey<FormState>();
  SignUpModel signupmodel = SignUpModel();
  LogInModel loginpmodel = LogInModel();

  @override
  Widget build(BuildContext context) {
    final halfMediaWidth = MediaQuery.of(context).size.width / 6.0;
     //TODO: implement build
    return AlertDialog(
      title: Text(
        "Do you have an account?"
      ),
      content: Text(
        "Log In or Sign up"
      ),
      actions: <Widget>[
        RaisedButton(
          onPressed: (){
            Alert(
              closeFunction: (){
                Navigator.pop(context);
              },
                context: context,
                title: "Log In",
                content: Column(
                  children: <Widget>[
                    LogInField(
                      hintText: 'Email',
                      isEmail: true,
                      validator: (String value) {
                        if (!validator.isEmail(value)) {
                          return 'Please enter a valid email';
                        }
                        return null;
                      },
                      onSaved: (String value) {
                        loginpmodel.email = value;
                      },
                    ),
                    LogInField(
                      hintText: 'Password',
                      isPassword: true,
                      validator: (String value) {
                        if (value.length < 7) {
                          return 'Password should be minimum 7 characters';
                        }_formKeyLogIn.currentState.save();
                        return null;
                      },
                      onSaved: (String value) {
                        loginpmodel.password = value;
                      },
                    ),
                  ],
                ),
                buttons: [
                  DialogButton(
                    color: Colors.blueAccent,
                    onPressed: () {
                      if (_formKeyLogIn.currentState.validate()) {
                        _formKeyLogIn.currentState.save();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeView()));
                      }
                    },
                    child: Text(
                      'Log In',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ]
            ).show();
          },
          child: Text(
            "Log In"
          ),
        ),
        RaisedButton(
          child: Text(
            "Sign up"
          ),
          onPressed: (){
            Alert(
                closeFunction: (){
                  Navigator.pop(context);
                },
                context: context,
                title: "Sign Up",
                content: Column(

                  children: <Widget>[
                    Container(
                      alignment: Alignment.topCenter,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              alignment: Alignment.topCenter,
//                              width: halfMediaWidth,
                              child: SignInField(
                                hintText: 'First Name',
                                validator: (String value) {
                                  if (value.isEmpty) {
                                    return 'Enter your first name';
                                  }
                                  return null;
                                },
                                onSaved: (String value) {
                                  signupmodel.firstName = value;
                                },
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.topCenter,
//                              width: halfMediaWidth,
                              child: SignInField(
                                hintText: 'Last Name',
                                validator: (String value) {
                                  if (value.isEmpty) {
                                    return 'Enter your last name';
                                  }
                                  return null;
                                },
                                onSaved: (String value) {
                                  signupmodel.lastName = value;
                                },
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SignInField(
                      hintText: 'Email',
                      isEmail: true,
                      validator: (String value) {
                        if (!validator.isEmail(value)) {
                          return 'Please enter a valid email';
                        }
                        return null;
                      },
                      onSaved: (String value) {
                        signupmodel.email = value;
                      },
                    ),
                    SignInField(
                      hintText: 'Password',
                      isPassword: true,
                      validator: (String value) {
                        if (value.length < 7) {
                          return 'Password should be minimum 7 characters';
                        }_formKeySignIn.currentState.save();return null;
                      },
                      onSaved: (String value) {
                        signupmodel.password = value;
                      },
                    ),
                    SignInField(
                      hintText: 'Confirm Password',
                      isPassword: true,
                      validator: (String value) {
                        if (value.length < 7) {
                          return 'Password should be minimum 7 characters';
                        } else if (signupmodel.password != null && value != signupmodel.password) {
                          print(value);
                          print(signupmodel.password);
                          return 'Password not matched';
                        }return null;
                      },
                    ),
                  ],
                ),
                buttons: [
                  DialogButton(
                    color: Colors.blueAccent,
                    onPressed: () {
                      if (_formKeySignIn.currentState.validate()) {
                        _formKeySignIn.currentState.save();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeView()));
                      }
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ]
            ).show();
          },
        ),
        RaisedButton(
          child: Text(
            "Cancel"
          ),
          onPressed: (){
            Navigator.pop(context);
          },
        )
      ],
    );
  }

  _onBasicAlertPressed(context) {
    Alert(
        context: context,
        title: "RFLUTTER ALERT",
        desc: "Flutter is more awesome with RFlutter Alert.")
        .show();
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
