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
              )
            ],
          ),
        ),
      ),
    );
  }
}
