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
                  height: 80.0,
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
                          width: 0.55*width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              TabBar(
                                isScrollable: true,
                                labelColor: Colors.white,
                                controller: _tabController,
                                indicatorColor: Colors.black,
                                indicatorSize: TabBarIndicatorSize.label,
                                tabs: <Widget>[
                                  Tab(child: textintabs('Home'),),
                                  Tab(child: textintabs('About Me'),),
                                  Tab(child: textintabs('What I Work With'),),
                                  Tab(child: textintabs('Consultation Format'),),
                                  Tab(child: textintabs('Contacts'),),
                                ],
                              ),
                              SizedBox(width: 30.0),
                              Container(
                                width: 140.0,
                                height: 40.0,
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
                SizedBox(height: 50.0),

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
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 7.0,),
                              Text('MY NAME\'S HARLEY MORGAN',
                                style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 10.0,
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 50.0,),
                          Text('Tell about\nthe difficulties\nand find a solution.',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 50.0,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          SizedBox(height: 40.0,),
                          Text('Everyone has answers to his questions. No other people\'s\nadvice and experience is needed. The main thing is to hear\nyourself.',
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 15.0,
                            ),
                          ),
                          SizedBox(height: 60.0,),
                          Text('Take the first step to harmony with yourself',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 17.0,
                            ),
                          ),
                          SizedBox(height: 30.0,),
                          Row(
                            children: <Widget>[
                              Container(
                                width: 180.0,
                                height: 55.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(Radius.circular(3.0)),
                                  color: Color(0xFF78AB6E)
                                ),
                                child: Center(
                                  child: Text('Write to Me',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 13.0,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 30.0,),
                              Text('or',
                                style: TextStyle(
                                  fontSize: 13.0,
                                  color: Colors.black54
                                ),
                              ),
                              SizedBox(width: 30.0,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('Call My Phone',
                                    style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 13.0
                                    ),
                                  ),
                                  SizedBox(height: 6.0,),
                                  Text('+ 1 (232) 123-4567',
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Stack(
                        overflow: Overflow.clip,
                        children: <Widget>[
                          Container(
                            height: 550.0,
                            width: 450.0,  
                            decoration: BoxDecoration(  
                              image: DecorationImage(image: AssetImage('assets/Girl3.jpg'), fit: BoxFit.cover),  
                              borderRadius: BorderRadius.all(Radius.circular(3.0)),
                            ),
                          ),
                          Positioned(
                            bottom: 0.0,
                            left: 0.0,
                            child: Container(
                              height: 62.0,
                              width: 180.0,
                              decoration: BoxDecoration(  
                                borderRadius: BorderRadius.all(Radius.circular(3.0)),
                                color: Colors.black,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(Icons.play_arrow,
                                    color: Colors.white,
                                    size: 26.0,
                                  ),
                                  SizedBox(width: 12.0),
                                  Text('Something About Me',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.w500
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
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