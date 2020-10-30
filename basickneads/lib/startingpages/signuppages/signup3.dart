import 'package:flutter/material.dart';
import 'package:basickneads/constants.dart';

class Signup3 extends StatefulWidget {
  @override
  _Signup3State createState() => _Signup3State();
}

class _Signup3State extends State<Signup3> {
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
              EnterField(fieldTitle: 'College Name:'),
              SizedBox(height: 15.0),
              EnterField(fieldTitle: 'College Roll Number:'),
              SizedBox(height: 40.0),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 20.0)),
                  Expanded(
                    child: WPRaisedButton(
                      buttonTitle: 'Previous',
                      onPressed: () => Navigator.pop(context, '/signup2'),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 15.0)),
                  Expanded(
                    child: WPRaisedButton(
                      buttonTitle: 'Finish',
                      onPressed: () => {
                        Navigator.popUntil(
                            context, ModalRoute.withName('/welcomepage')),
                        Navigator.pushNamed(context, '/allsetpage'),
                      },
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 20.0)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
