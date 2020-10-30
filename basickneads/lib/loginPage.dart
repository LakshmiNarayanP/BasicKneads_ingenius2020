import 'package:flutter/material.dart';
import 'constants.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: kDoodle,
      child: OrangeCard(
        container: Container(
          child: Column(
            children: [
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Login',
                style: kPoppinTitle,
              ),
              SizedBox(
                height: 40.0,
              ),
              EnterField(fieldTitle: 'Username:'),
              SizedBox(height: 15.0),
              EnterField(fieldTitle: 'Password:'),
              SizedBox(height: 25.0),
              WPRaisedButton(
                buttonTitle: 'Login',
                onPressed: () => print('button pressed'),
              ),
              SizedBox(height: 25.0),
              SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
