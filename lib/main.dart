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
                                fontFamily: 'Montserrat',
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
                                  Tab(child: fortabs('Name'),),
                                  Tab(child: fortabs('About Me'),),
                                  Tab(child: fortabs('What I Work With'),),
                                  Tab(child: fortabs('Consultation Format'),),
                                  Tab(child: fortabs('Contacts'),),
                                ],
                              ),
                              Container(
                                color: Colors.blue,
                                width: 30.0,
                                height: 40.0,
                                child: Row(
                                  children: <Widget>[
                                    Text('My Facebook'),
                                    Icon(Icons.arrow_forward)
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

Widget fortabs(String name){
  return Text(name,
    style: TextStyle(
      fontFamily: 'Montserrat',
      color: Colors.black,
      fontSize: 12.0,
      fontWeight: FontWeight.w600
    ),
  );
}