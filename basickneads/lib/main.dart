import 'package:basickneads/startingpages/signuppages/signup1.dart';
import 'package:basickneads/startingpages/signuppages/signup2.dart';
import 'package:flutter/material.dart';
import 'startingpages/splashScreen.dart';
import 'startingpages/welcomePage.dart';
import 'startingpages/loginPage.dart';
import 'startingpages/signuppages/signup1.dart';
import 'startingpages/signuppages/signup2.dart';
import 'startingpages/signuppages/signup3.dart';
import 'startingpages/allsetPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      routes: {
        '/welcomepage': (context) => WelcomePage(),
        '/loginpage': (context) => LoginPage(),
        '/signup1': (context) => Signup1(),
        '/signup2': (context) => Signup2(),
        '/signup3': (context) => Signup3(),
        '/allsetpage': (context) => AllSetPage(),
      },
    );
  }
}
