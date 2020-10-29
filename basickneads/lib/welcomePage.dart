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
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 50.0),
            Text(
              'Welcome!',
              style: TextStyle(fontFamily: 'Pacifico', fontSize: 40),
            ),
            SizedBox(height: 20.0),
            GFAvatar(
              backgroundImage: AssetImage('images/leaf.png'),
              shape: GFAvatarShape.square,
              radius: 100.0,
            ),
            WPRaisedButton(buttonTitle: 'Login'),
            WPRaisedButton(buttonTitle: 'Sign Up'),
          ],
        ),
      ),
    );
  }
}

class WPRaisedButton extends StatelessWidget {
  const WPRaisedButton({this.buttonTitle});

  final String buttonTitle;
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(
        buttonTitle,
        style: TextStyle(fontFamily: 'Poppins', fontSize: 20),
      ),
      onPressed: () => {print('pressed')},
      color: Colors.grey[850],
      textColor: Colors.white,
      padding: EdgeInsets.all(8.0),
      splashColor: Colors.grey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
      ),
    );
  }
}
