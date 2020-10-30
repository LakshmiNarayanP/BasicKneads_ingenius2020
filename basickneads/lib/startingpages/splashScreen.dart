import 'package:flutter/material.dart';
import 'dart:async';
import 'package:basickneads/constants.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime() {
    var duration = new Duration(seconds: 5);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushNamed(context, '/welcomepage');
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: kDoodle,
        child: Center(
            child: CircleAvatar(
          radius: 230.0,
        )),
      ),
    );
  }
}
