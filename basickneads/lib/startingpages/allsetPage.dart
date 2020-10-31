import 'package:flutter/material.dart';
import 'package:basickneads/constants.dart';
import 'dart:async';

class AllSetPage extends StatefulWidget {
  @override
  _AllSetPageState createState() => _AllSetPageState();
}

class _AllSetPageState extends State<AllSetPage> {
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
    Navigator.popUntil(context, ModalRoute.withName('/welcomepage'));
    Navigator.pushNamed(context, '/HomePage_Meals');
  }

  Widget build(BuildContext context) {
    return Container(
      decoration: kDoodle,
      child: Image(
        image: AssetImage('images/Group 84.png'),
      ),
    );
  }
}
