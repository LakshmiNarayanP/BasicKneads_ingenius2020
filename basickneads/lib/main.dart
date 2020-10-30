import 'package:basickneads/startingpages/signuppages/signup1.dart';
import 'package:basickneads/startingpages/signuppages/signup2.dart';
import 'package:flutter/material.dart';
import 'startingpages/splashScreen.dart';
import 'startingpages/welcomePage.dart';
import 'startingpages/loginPage.dart';
import 'startingpages/signuppages/signup1.dart';
import 'startingpages/signuppages/signup2.dart';
import 'startingpages/allsetPage.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
        '/allsetpage': (context) => AllSetPage(),
      },
    );
  }
}
