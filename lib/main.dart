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

        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.only(left: width*1/10, right: width*1/10),
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: 60.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Hayley Morgan',
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                            ),
                          ),
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
                        height: 40.0,
                        width: 0.5*width,
                        child: TabBar(
                          controller: _tabController,
                          indicatorColor: Colors.black,
                          tabs: <Widget>[
                            Tab(child: Text('Home',
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                color: Colors.black,
                                fontWeight: FontWeight.w500
                              ),
                            ),),
                            Tab(child: Text('About Me',
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                color: Colors.black,
                                fontWeight: FontWeight.w500
                              ),
                            ),),
                            Tab(child: Text('What I Work With',
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                color: Colors.black,
                                fontWeight: FontWeight.w500
                              ),
                            ),),
                            Tab(child: Text('Consultation Format',
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                color: Colors.black,
                                fontWeight: FontWeight.w500
                              ),
                            ),),
                            Tab(child: Text('Contacts',
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                color: Colors.black,
                                fontWeight: FontWeight.w500
                              ),
                            ),),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  children: <Widget>[
                    
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}