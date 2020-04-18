import 'package:flutter/material.dart';
import 'package:myweb/ResponsiveWidget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        accentColor: Colors.white,
      ),
      home: Body()
    );
  }
}

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> with SingleTickerProviderStateMixin{
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
  final width = MediaQuery.of(context).size.width;

    return ResponsiveWidget(
      largeScreen: Scaffold(

        endDrawer: ResponsiveWidget.isSmallScreen(context) ? SizedBox(
          height: width*0.5,
          child: Drawer(
            child: ListView(
              children: [
                Text('Home'),
                Text('About Me'),
                Text('What I Work With'),
                Text('Consultation Format'),
                Text('Contacts'),
              ],
            ),
          ),
        ) : null,

        // TOP BAR OF THE WEBSITE...BELOW

        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          // padding: EdgeInsets.only(left: width*1/10, right: width*1/10),
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: 70.0,
                  child: Padding(
                    padding: EdgeInsets.only(left: width*1/10, right: width*1/10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Hayley Morgan',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            SizedBox(height: 5.0,),
                            Text('counseling psychologist',
                              style: TextStyle(
                                color: Colors.black45,
                                fontSize: 12.0
                              ),
                            )
                          ],
                        ),

                        // ResponsiveWidget.isSmallScreen(context) ? SizedBox(width: 350.0) : 
                        // SizedBox(width: MediaQuery.of(context).size.width / 2 - 350.0),

                        // ResponsiveWidget.isSmallScreen(context) ?
                        // Image.network('assets/menu.png', width: 25, height: 25.0) :
                        Container(
                          width: 0.5*width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              TabBar(
                                isScrollable: true,
                                labelColor: Colors.white,
                                controller: _tabController,
                                indicatorColor: Colors.black,
                                indicatorSize: TabBarIndicatorSize.label,
                                tabs: <Widget>[
                                  Tab(child: textintabs('Name'),),
                                  Tab(child: textintabs('About Me'),),
                                  Tab(child: textintabs('What I Work With'),),
                                  Tab(child: textintabs('Consultation Format'),),
                                  Tab(child: textintabs('Contacts'),),
                                ],
                              ),
                              Container(
                                width: 140.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(3.0)),
                                  color: Color(0xFF3b5998)
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Text('My Facebook',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13.0,
                                      ),
                                    ),
                                    Icon(Icons.arrow_forward,
                                      color: Colors.white,
                                      size: 14.0,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(indent: width*1/20, endIndent: width*1/20, color: Colors.black12, thickness: 1.0,),

                // MAIN BODY OF THE WEBSITE...BELOW

                Padding(
                  padding: EdgeInsets.only(left: width*1/10, right: width*1/10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('01 - HELLO',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10.0,
                                ),
                              ),
                              Text('MY NAME\'S HARLEY MORGAN',
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 10.0,
                                ),
                              )
                            ],
                          ),
                          Text('Tell about\nthe difficulties\nand find a solution.',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                            ),
                          ),
                          Text('Everyone has answers to his questions. No other people\'s\nadvice and experience is needed. The main thing is to hear\n yourself.',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                            ),
                          ),
                          Text('Take the first step to harmony with yourself',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10.0,
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Container(
                                width: 140.0,
                                height: 35.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(3.0)),
                                  color: Color(0xFF3b5998)
                                ),
                                child: Text('Write to Me',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13.0,
                                  ),
                                ),
                              ),
                              Text('or'),
                              Column(
                                children: <Widget>[
                                  Text('Call My Phone'),
                                  Text('+ 1 (232) 123-4567')
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        height: 200.0,
                        width: 200.0,
                        color: Colors.green,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget textintabs(String name){
  return Text(name,
    style: TextStyle(
      color: Colors.black,
      fontSize: 12.5,
      fontWeight: FontWeight.w600
    ),
  );
}