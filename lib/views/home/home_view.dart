import 'package:flutter/material.dart';
import 'package:mywebapp/drawers/Navigation_drawer.dart';
import 'package:mywebapp/views/home/home_content_desktop.dart';
import 'package:mywebapp/views/home/home_content_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:mywebapp/widgets/NavigationBar/navigation_bar.dart';


class HomeView extends StatefulWidget {
  HomeView({Key key, this.title}) : super(key: key);
  final String title;

  @override
  HomeViewState createState() => HomeViewState();
}

class HomeViewState extends State<HomeView> {
//  Widget mainPage = Center(child: Text(
//    "Flavor Food",
//    style: TextStyle(fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
//    textScaleFactor: 5,
//  ),
//  );
  @override
  Widget build(BuildContext context) {
    return
      ResponsiveBuilder(
        builder: (context, sizingInformation) => Scaffold(
          drawer: sizingInformation.deviceScreenType ==
              DeviceScreenType.Mobile ? NavigationDrawer() : null,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              NavigationBar(),
              Expanded(
                child: ScreenTypeLayout(
                  mobile: HomeContentMobile(),
                  desktop: HomeContentDesktop(),
                ),
              )
            ],
          ),
        ),
      );
  }
}
