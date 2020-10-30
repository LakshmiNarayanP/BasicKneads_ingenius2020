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
              Container(
                height: 400.0,
                width: 400.0,
                child: ListView(
                  physics: AlwaysScrollableScrollPhysics(),
                  children: [
                    Column(
                      children: <Widget>[
                        EnterField(fieldTitle: 'Name:'),
                        SizedBox(height: 10.0),
                        EnterField(fieldTitle: 'Password:'),
                        SizedBox(height: 10.0),
                        EnterField(fieldTitle: 'Email ID:'),
                        EnterField(fieldTitle: 'Date of Birth:'),
                        SizedBox(height: 10.0),
                        EnterField(fieldTitle: 'College Name:'),
                        SizedBox(height: 10.0),
                        EnterField(fieldTitle: 'College Roll Number:'),
                        SizedBox(height: 40.0),
                        SizedBox(height: 20.0),
                        Row(
                          children: [
                            Padding(padding: EdgeInsets.only(left: 20.0)),
                            Expanded(
                              child: WPRaisedButton(
                                buttonTitle: 'Previous',
                                onPressed: () =>
                                    Navigator.pop(context, '/signup2'),
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(left: 15.0)),
                            Expanded(
                              child: WPRaisedButton(
                                  buttonTitle: 'Finish',
                                  onPressed: () => {print('Pressed')}
                                  //() async {
                                  //   setState(() {
                                  //     showSpinner = true;
                                  //   });
                                  //   try {
                                  //     final newUser =
                                  //         await _auth.createUserWithEmailAndPassword(
                                  //             email: email, password: password);
                                  //     if (newUser != null)
                                  //       Navigator.popUntil(
                                  //           context, ModalRoute.withName('/welcomepage')),
                                  //       Navigator.pushNamed(context, '/allsetpage'),
                                  //     setState(() {
                                  //       showSpinner = false;
                                  //     });
                                  //   } catch (e) {
                                  //     print(e);
                                  //   }
                                  // },

                                  //     },
                                  ),
                              // WPRaisedButton(
                              //   buttonTitle: 'Next',
                              //   onPressed: () => Navigator.pushNamed(context, '/signup3'),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
