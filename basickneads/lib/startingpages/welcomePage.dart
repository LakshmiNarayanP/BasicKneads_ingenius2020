import 'package:flutter/material.dart';
import 'package:basickneads/constants.dart';
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
      child: OrangeCard(
        container: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Welcome!',
                style: TextStyle(fontFamily: 'Pacifico', fontSize: 40),
              ),
              GFAvatar(
                backgroundImage: AssetImage('images/welcome.jpeg'),
                shape: GFAvatarShape.square,
                radius: 100.0,
              ),
              SizedBox(height: 30.0),
              WPRaisedButton(
                buttonTitle: 'Login',
                onPressed: () => Navigator.pushNamed(context, '/loginpage'),
              ),
              SizedBox(height: 30.0),
              WPRaisedButton(
                buttonTitle: 'Sign Up',
                onPressed: () => Navigator.pushNamed(context, '/signup1'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
