import 'package:figoal/components/home/home_page.dart';
import 'package:figoal/config/colors.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Figoal',
      theme: ThemeData(
        fontFamily: 'Avenir',
        primaryColor: Colors.white,
        accentColor: ash_color,
      ),
      home: HomePage(),
    );
  }
}
