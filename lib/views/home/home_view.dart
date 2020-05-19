import 'package:flutter/material.dart';
import 'package:mywebapp/drawers/Navigation_drawer.dart';
import 'package:mywebapp/views/home/home_content_desktop.dart';
import 'package:mywebapp/views/home/home_content_mobile.dart';
import 'package:mywebapp/widgets/CenteredView/centered_view.dart';
import 'package:mywebapp/widgets/LowerNavigation/lower_navigation.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:mywebapp/widgets/NavigationBar/navigation_bar.dart';


class HomeView extends StatefulWidget {
  HomeView({Key key, this.title}) : super(key: key);
  final String title;

  @override
  HomeViewState createState() => HomeViewState();
}

class HomeViewState extends State<HomeView> {

  @override
  Widget build(BuildContext context) {
    return
      ResponsiveBuilder(
        builder: (context, sizingInformation) => Scaffold(
          drawer: sizingInformation.deviceScreenType ==
              DeviceScreenType.mobile ? NavigationDrawer() : null,
          endDrawer: sizingInformation.deviceScreenType ==
              DeviceScreenType.mobile ? CheckOutDrawer() : null,
          body: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                  flex: 1,
                  child: NavigationBar(),
              ),
              Expanded(
                flex: 4,
                child: ScreenTypeLayout(
                  mobile: HomeContentMobile(),
                  desktop: HomeContentDesktop(),
                ),
              ),
            ],
          ),
        ),
      );
  }
}
