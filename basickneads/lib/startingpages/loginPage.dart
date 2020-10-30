import 'package:flutter/material.dart';
import 'package:basickneads/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _auth = FirebaseAuth.instance;
  String email, password;
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
                  'Login',
                  style: kPoppinTitle,
                ),
                SizedBox(
                  height: 40.0,
                ),
                EnterField(
                  fieldTitle: 'Username:',
                  keyboardType: TextInputType.emailAddress,
                  //obscureText: false,
                  onChanged: (value) {
                    email = value;
                  },
                ),
                SizedBox(height: 15.0),
                EnterField(
                  fieldTitle: 'Password:',
                  keyboardType: TextInputType.text,
                  //obscureText: true,
                  onChanged: (value) {
                    password = value;
                  },
                ),
                SizedBox(height: 25.0),
                WPRaisedButton(
                  buttonTitle: 'Login',
                  onPressed: () async {
                    setState(() {
                      showSpinner = true;
                    });
                    try {
                      final newUser = await _auth.signInWithEmailAndPassword(
                          email: email, password: password);
                      if (newUser != null)
                        Navigator.pushNamed(context, '/allsetpage');
                      setState(() {
                        showSpinner = false;
                      });
                    } catch (e) {
                      print(e);
                    }
                  },
                ),
                SizedBox(height: 25.0),
                SocialButtons(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
