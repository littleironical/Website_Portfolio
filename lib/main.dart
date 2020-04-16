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

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  final width = MediaQuery.of(context).size.width;

    return ResponsiveWidget(
      largeScreen: Scaffold(
        drawer: ResponsiveWidget.isSmallScreen(context) ? Drawer(
          child: ListView(
            children: [
              Text('Home'),
              Text('About Me'),
              Text('What I Work With'),
              Text('Consultation Format'),
              Text('Contacts'),
            ],
          ),
        ) : null,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.only(left: width*1/10, right: width*1/10),
        ),
      ),
    );
  }
}