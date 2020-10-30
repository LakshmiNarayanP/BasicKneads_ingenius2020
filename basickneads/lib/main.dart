import 'package:basickneads/signuppages/signup1.dart';
import 'package:flutter/material.dart';
import 'splashScreen.dart';
import 'welcomePage.dart';
import 'loginPage.dart';
import 'signuppages/signup1.dart';

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
      },
    );
  }
}
