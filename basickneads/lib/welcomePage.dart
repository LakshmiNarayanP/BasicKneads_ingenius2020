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
      child: OrangeCard(
        container: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 30.0),
              Text(
                'Welcome!',
                style: TextStyle(fontFamily: 'Pacifico', fontSize: 40),
              ),
              GFAvatar(
                backgroundImage: AssetImage('images/leaf.png'),
                shape: GFAvatarShape.square,
                radius: 100.0,
              ),
              SizedBox(height: 30.0),
              WPRaisedButton(buttonTitle: 'Login'),
              SizedBox(height: 30.0),
              WPRaisedButton(buttonTitle: 'Sign Up'),
            ],
          ),
        ),
      ),
    );
  }
}

class OrangeCard extends StatelessWidget {
  OrangeCard({this.container});

  final Container container;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.orange[400],
      margin: EdgeInsets.symmetric(vertical: 120.0, horizontal: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20.0),
        ),
      ),
      child: container,
    );
  }
}
