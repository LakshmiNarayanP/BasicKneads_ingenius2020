import 'package:flutter/material.dart';
import 'splashScreen.dart';
import 'welcomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      routes: {'/welcomepage': (context) => WelcomePage()},
    );
  }
}
