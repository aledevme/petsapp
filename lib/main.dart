import 'package:flutter/material.dart';
import 'package:flutterdsc/screens/landing.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/' : (BuildContext context) => LandingScreen(),
      },
    );
  }
}