import 'package:flutter/material.dart';
import 'package:basickneads/constants.dart';

class AllSetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: kDoodle,
      child: Card(
        color: Colors.grey[400],
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
          ],
        ),
      ),
    );
  }
}
