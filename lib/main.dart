import 'package:flutter/material.dart';

import 'package:velozity_assignment/dashboard.dart';

void main() {
  runApp(HomeWidget());
}

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Dashboard(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme: TextTheme(
        headline1: TextStyle(
            fontSize: 32, fontWeight: FontWeight.w700, color: Colors.white),
        headline2: TextStyle(
            fontSize: 24, fontWeight: FontWeight.w700, color: Colors.white),
        headline3: TextStyle(
            fontSize: 18, fontWeight: FontWeight.w700, color: Colors.white),
        bodyText1: TextStyle(
            fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
        bodyText2: TextStyle(
            fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white),
        subtitle1: TextStyle(
            fontSize: 12, fontWeight: FontWeight.w400, color: Colors.white),
        overline: TextStyle(
            fontSize: 8, fontWeight: FontWeight.w300, color: Colors.white),
      )),
    );
  }
}
