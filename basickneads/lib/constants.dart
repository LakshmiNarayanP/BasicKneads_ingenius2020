import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

TextStyle kPoppinTitle = TextStyle(fontFamily: 'Poppins', fontSize: 40);
BoxDecoration kDoodle = BoxDecoration(
  color: Colors.white,
  image: DecorationImage(
    image: AssetImage('images/WelcomeBackground.png'),
    fit: BoxFit.cover,
  ),
);

class OrangeCard extends StatelessWidget {
  OrangeCard({@required this.container});

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
      child: Column(
        children: [
          SizedBox(
            height: 20.0,
          ),
          container,
        ],
      ),
    );
  }
}

class WPRaisedButton extends StatelessWidget {
  WPRaisedButton({this.buttonTitle, this.onPressed});

  final String buttonTitle;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: 300.0,
      child: RaisedButton(
        child: Text(
          buttonTitle,
          style: TextStyle(fontFamily: 'Poppins', fontSize: 25),
        ),
        onPressed: onPressed,
        color: Colors.grey[800],
        textColor: Colors.white,
        padding: EdgeInsets.all(8.0),
        splashColor: Colors.grey,
        elevation: 10.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
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

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Or continue with',
          style: kPoppinTitle.copyWith(fontSize: 18.0),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SignInButton(
              Buttons.Google,
              onPressed: () {},
            ),
            SignInButton(
              Buttons.Facebook,
              mini: true,
              onPressed: () {},
            ),
            SignInButton(
              Buttons.Twitter,
              mini: true,
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }
}
