import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

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
              Text(
                'Or continue with',
                style: kPoppinTitle.copyWith(fontSize: 18.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SignInButton(
                    Buttons.Facebook,
                    mini: true,
                    onPressed: () {},
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class EnterField extends StatelessWidget {
  EnterField({this.fieldTitle});

  final String fieldTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30.0, right: 30.0),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Text(
                fieldTitle,
                style: kPoppinTitle.copyWith(fontSize: 27.0),
              ),
            ),
          ),
          Material(
            elevation: 10.0,
            shadowColor: Colors.grey[400],
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                    borderSide: BorderSide(color: Colors.white, width: 1)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
