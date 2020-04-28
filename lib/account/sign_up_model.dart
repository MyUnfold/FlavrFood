import 'package:flutter/material.dart';

class SignUpModel {
  String firstName;
  String lastName;
  String email;
  String password;

  SignUpModel({this.firstName, this.lastName, this.email, this.password});
}

class LogInModel {
  String email;
  String password;

  LogInModel({this.email, this.password});
}

