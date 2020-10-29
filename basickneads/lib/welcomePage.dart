import 'package:flutter/material.dart';
import 'constants.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: kDoodle,
      child: Card(
        color: Colors.orange[600],
        margin: EdgeInsets.symmetric(vertical: 100.0, horizontal: 10),
        //child: Padding(
        //padding: EdgeInsets.all(80.0),
      ),
    );
  }
}
