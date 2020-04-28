import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:mywebapp/widgets/LowerNavigation/lower_navigation_mobile.dart';
import 'package:mywebapp/widgets/LowerNavigation/lower_navigation_desktop.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LowerNavigation extends StatefulWidget{
  @override
  LowerNavigationState createState() => LowerNavigationState();
}

class LowerNavigationState extends State<LowerNavigation> {
  LowerNavigationState();
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: LowerNavigationMobile(),
      tablet: LowerNavigationDesktop(),
    );
  }
}