import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:getwidget/getwidget.dart';

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
        color: Colors.orange[400],
        margin: EdgeInsets.symmetric(vertical: 100.0, horizontal: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20.0),
          ),
        ),
        child: Column(
          children: [
            Text('Welcome'),
            GFAvatar(
                backgroundImage: AssetImage('images/leaf.png'),
                shape: GFAvatarShape.square),
          ],
        ),
      ),
    );
  }
}
