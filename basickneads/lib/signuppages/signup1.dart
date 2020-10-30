import 'package:basickneads/constants.dart';
import 'package:flutter/material.dart';

class Signup1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: kDoodle,
      child: OrangeCard(
        container: Container(
          child: Column(
            children: [
              Text(
                'Sign up',
                style: kPoppinTitle,
              ),
              SizedBox(
                height: 50.0,
              ),
              WPRaisedButton(
                buttonTitle: 'New account',
                onPressed: () => {},
              ),
              SizedBox(height: 50.0),
              SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
