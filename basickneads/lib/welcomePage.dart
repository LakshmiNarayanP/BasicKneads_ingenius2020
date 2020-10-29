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
        color: Color(0xFFB800),
      ),
    );
  }
}
