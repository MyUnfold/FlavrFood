import 'package:flutter/material.dart';
import 'package:mywebapp/drawers/Navigation_drawer.dart';
import 'package:mywebapp/views/Overview/overview_content_desktop.dart';
import 'package:mywebapp/views/Overview/overview_content_mobile.dart';
import 'package:mywebapp/views/home/home_content_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:mywebapp/widgets/NavigationBar/navigation_bar.dart';


class OverviewContent extends StatefulWidget {
  OverviewContent({Key key, this.title}) : super(key: key);
  final String title;

  @override
  OverviewContentState createState() => OverviewContentState();
}

class OverviewContentState extends State<OverviewContent> {

  @override
  Widget build(BuildContext context) {
    return
      ResponsiveBuilder(
        builder: (context, sizingInformation) => Scaffold(
          drawer: sizingInformation.deviceScreenType ==
              DeviceScreenType.mobile ? NavigationDrawer() : null,
          endDrawer: (sizingInformation.deviceScreenType ==
              DeviceScreenType.mobile) || (sizingInformation.deviceScreenType ==
              DeviceScreenType.tablet)  ? CheckOutDrawer() : null,
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
                  mobile: OverviewContentMobile(),
                  desktop: OverviewContentDesktop(),
                ),
              ),
            ],
          ),
        ),
      );
  }
}
