import 'package:flutter/material.dart';
import 'package:basickneads/constants.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class Signup3 extends StatefulWidget {
  @override
  _Signup3State createState() => _Signup3State();
}

class _Signup3State extends State<Signup3> {
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
                EnterField(fieldTitle: 'Date of Birth:'),
                SizedBox(height: 15.0),
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
                        //     onPressed: () async {
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
                    ),
                    Padding(padding: EdgeInsets.only(left: 20.0)),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
