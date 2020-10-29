import 'package:flutter/material.dart';

BoxDecoration kDoodle = BoxDecoration(
  color: Colors.white,
  image: DecorationImage(
    image: AssetImage('images/WelcomeBackground.png'),
    fit: BoxFit.cover,
  ),
);

Card kOrangeCard = Card(
  color: Colors.orange[400],
  margin: EdgeInsets.symmetric(vertical: 120.0, horizontal: 10),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(20.0),
    ),
  ),
  child: Container(),
);

class WPRaisedButton extends StatelessWidget {
  WPRaisedButton({this.buttonTitle});

  final String buttonTitle;
  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: 300.0,
      child: RaisedButton(
        child: Text(
          buttonTitle,
          style: TextStyle(fontFamily: 'Poppins', fontSize: 25),
        ),
        onPressed: () => {print('pressed')},
        color: Colors.grey[800],
        textColor: Colors.white,
        padding: EdgeInsets.all(8.0),
        splashColor: Colors.grey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
      ),
    );
  }
}
