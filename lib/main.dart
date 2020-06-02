import 'package:flutter/material.dart';
import 'package:mywebapp/globals.dart' as globals;
import 'package:mywebapp/views/Overview/overview_content.dart';
import 'package:mywebapp/views/home/home_view.dart';
import 'package:mywebapp/widgets/ElementCard/ElementCardMobile.dart';


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
      home: OverviewContent(),
    );
  }
}