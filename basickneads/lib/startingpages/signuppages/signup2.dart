import 'package:flutter/material.dart';
import 'package:basickneads/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class Signup2 extends StatefulWidget {
  @override
  _Signup2State createState() => _Signup2State();
}

class _Signup2State extends State<Signup2> {
  final _auth = FirebaseAuth.instance;
  String email, password, name, dob, collegename, collegeroll;
  bool showSpinner = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: kDoodle,
      child: ModalProgressHUD(
        inAsyncCall: showSpinner,
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
                          EnterField(
                            fieldTitle: 'Name:',
                            onChanged: (value) {
                              name = value;
                            },
                            obscureText: false,
                          ),
                          SizedBox(height: 10.0),
                          EnterField(
                            fieldTitle: 'Password:',
                            onChanged: (value) {
                              password = value;
                            },
                            obscureText: true,
                          ),
                          SizedBox(height: 10.0),
                          EnterField(
                            fieldTitle: 'Email ID:',
                            onChanged: (value) {
                              email = value;
                            },
                            obscureText: false,
                          ),
                          SizedBox(height: 20.0),
                          EnterField(
                            fieldTitle: 'Date of Birth (DD/MM/YYYY):',
                            onChanged: (value) {
                              dob = value;
                            },
                            obscureText: false,
                          ),
                          SizedBox(height: 10.0),
                          EnterField(
                            fieldTitle: 'College Name:',
                            onChanged: (value) {
                              collegename = value;
                            },
                            obscureText: false,
                          ),
                          SizedBox(height: 10.0),
                          EnterField(
                            fieldTitle: 'College Roll Number:',
                            onChanged: (value) {
                              collegeroll = value;
                            },
                            obscureText: false,
                          ),
                          SizedBox(height: 40.0),
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
                                  onPressed: () async {
                                    setState(() {
                                      showSpinner = true;
                                    });
                                    try {
                                      final newUser = await _auth
                                          .createUserWithEmailAndPassword(
                                              email: email, password: password);
                                      if (newUser != null) {
                                        Navigator.popUntil(
                                            context,
                                            ModalRoute.withName(
                                                '/welcomepage'));
                                        Navigator.pushNamed(
                                            context, '/allsetpage');
                                      }
                                      setState(() {
                                        showSpinner = false;
                                      });
                                    } catch (e) {
                                      print(e);
                                    }
                                  },
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(left: 20.0)),
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
      ),
    );
  }
}
