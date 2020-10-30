import 'package:flutter/material.dart';
import 'package:basickneads/constants.dart';

class Signup2 extends StatefulWidget {
  @override
  _Signup2State createState() => _Signup2State();
}

class _Signup2State extends State<Signup2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: kDoodle,
      child: OrangeCard(
        container: Container(
          child: Column(
            children: [
              Text(
                'Sign Up',
                style: kPoppinTitle,
              ),
              SizedBox(
                height: 20.0,
              ),
              EnterField(fieldTitle: 'Name:'),
              SizedBox(height: 15.0),
              EnterField(fieldTitle: 'Phone Number:'),
              SizedBox(height: 15.0),
              EnterField(fieldTitle: 'Email Address:'),
              SizedBox(height: 25.0),
              WPRaisedButton(
                buttonTitle: 'Next',
                onPressed: () => Navigator.pushNamed(context, '/signup3'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
