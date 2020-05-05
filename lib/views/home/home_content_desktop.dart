import 'package:flutter/material.dart';
import 'package:mywebapp/widgets/NavigationBar/navigation_bar.dart';


class HomeContentDesktop extends StatefulWidget {
  HomeContentDesktop({Key key, this.title}) : super(key: key);
  final String title;

  @override
  HomeContentDesktopState createState() => HomeContentDesktopState();
}

class HomeContentDesktopState extends State<HomeContentDesktop> {
  var now = new DateTime.now();


  bool isMeat = false;
  bool isVegan = false;
  bool isGluFree = false;

  @override
  Widget build(BuildContext context) {
    String day = now.day.toString();
    String month = now.month.toString();
    String year = now.year.toString();
    String date = month + "/" +  day + "/" + year;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(
                  height: 50,
                  width: 500,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'search',
                      icon: Icon(Icons.search),
                    ),
//                    onChanged: (),
                  ),
                ),
                Switch(
                  value: isMeat,
                  onChanged: (value){
                    setState(() {
                      isMeat = !isMeat;
                    });
                  },
                  activeColor: Colors.green,

                ),
                Switch(
                  value: isVegan,
                  onChanged: (value){
                    setState(() {
                      isVegan = !isVegan;
                    });
                  },
                  activeColor: Colors.green,
                ),
                Switch(
                  value: isGluFree,
                  onChanged: (value){
                    setState(() {
                      isGluFree = !isGluFree;
                    });
                  },
                  activeColor: Colors.green,
                ),
              ],
            ),
          ),
           SizedBox(
            height: 30,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  flex: 3,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Expanded(
                              child: SizedBox(
                                child: Text(
                                  "Today's Options",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FontStyle.italic,
                                      fontSize: 35
                                  ),
                                ),
                              ),
                            ),
                            RaisedButton(
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(25)

                              ),
                              color: Colors.green,
                              child: Text(
                                "Compare Meals",
                                style: TextStyle(
                                  color: Colors.lightGreenAccent,
                                  fontWeight: FontWeight.w700,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              onPressed: (){
                                ///
                              },
                              hoverElevation: 0.0,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            RaisedButton(
                                shape: new RoundedRectangleBorder(
                                    borderRadius: new BorderRadius.circular(25)

                                ),
                              child: Text(
                                "Filter",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              color: Colors.white ,
                              onPressed: (){
                                  ///
                              },
                            ),
                            IconButton(
                              color: Colors.white,
                              icon: Icon(Icons.more,
                              color: Colors.black,),
                              onPressed: (){
                                ///
                              },
                            ),
                          ],
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "\n    Drag and drop meals to your list\n",
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        DefaultTabController(
                          length: 6,
                          child: Container(
                            child: TabBar(
                              labelColor: Colors.black,
                              labelStyle: TextStyle(fontStyle: FontStyle.italic),
                              indicatorSize: TabBarIndicatorSize.label,
                              tabs: <Widget>[
                                Tab(text: "All Cuisines"),
                                Tab(text: "Italian"),
                                Tab(text: "Greek"),
                                Tab(text: "Thai"),
                                Tab(text: "Chinese"),
                                Tab(text: "Cajun"),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),

                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text("Create your\nmeal plan",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        Expanded(
                          child: Text(
                            "\nfor " + date,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),

                  ),
                ),
              ],
            ),
          )
          /// Content For the Page - DESKTOP -
        ],
      ),
    );
  }
}


class TabbarView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TabbarView(
    );
  }
}