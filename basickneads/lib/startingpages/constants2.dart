import 'package:flutter/material.dart';

class FoodItemCard extends StatelessWidget {
  FoodItemCard({this.foodname});
  final String foodname;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1.0,
                blurRadius: 2.0,
                offset: Offset(0, 1))
          ]),
      height: 100.0,
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 0.0, 0.0, 0.0),
            child: Container(
              width: 80.0,
              height: 80.0,
              decoration: BoxDecoration(
                  color: Colors.yellow[800],
                  borderRadius: BorderRadius.all(Radius.circular(20.0))),
            ),
          ),
          SizedBox(
            width: 20.0,
          ),
          Text(foodname),
        ],
      ),
    );
  }
}

class MenuButtons extends StatelessWidget {
  MenuButtons(
      {this.buttontitle,
      this.imagename,
      this.fontsize,
      this.buttoncolor,
      this.pageonclick});
  final String imagename;
  final String buttontitle;
  final double fontsize;
  final Color buttoncolor;
  final String pageonclick;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
      child: SizedBox(
        width: 80.0,
        height: 200.0,
        child: RaisedButton(
          color: buttoncolor,
          onPressed: () {
            Navigator.pushNamed(context, pageonclick);
          },
          textColor: Colors.black,
          child: Container(
            width: 80.0,
            height: 200.0,
            child: new Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 0.0),
                  child: Image(
                    image: AssetImage(imagename),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 0.0),
                  child: Text(
                    buttontitle,
                    style:
                        TextStyle(fontSize: fontsize, fontFamily: 'PoppinsL'),
                  ),
                ),
              ],
            ),
          ),
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(40.0)),
        ),
      ),
    );
  }
}
