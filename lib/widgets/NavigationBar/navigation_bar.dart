import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:mywebapp/widgets/NavigationBar/navigation_bar_mobile.dart';
import 'package:mywebapp/widgets/NavigationBar/navigation_bar_tablet_desktop.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:mywebapp/account/account_manager.dart';
import 'package:mywebapp/main.dart';

class NavigationBar extends StatefulWidget{
  @override
  NavigationBarState createState() => NavigationBarState();
}

class NavigationBarState extends State<NavigationBar> {
  NavigationBarState();
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: NavigationBarMobile(),
      tablet: NavigationBarTabletDesktop(),
    );
  }
}

