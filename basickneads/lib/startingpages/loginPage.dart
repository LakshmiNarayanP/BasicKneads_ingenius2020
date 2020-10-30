import 'package:flutter/material.dart';
import 'package:basickneads/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _auth = FirebaseAuth.instance;
  String email, password;
  bool showSpinner = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: kDoodle,
      child: OrangeCard(
        container: Container(
          child: Column(
            children: [
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
