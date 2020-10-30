import 'package:basickneads/startingpages/signuppages/signup1.dart';
import 'package:basickneads/startingpages/signuppages/signup2.dart';
import 'package:flutter/material.dart';
import 'startingpages/splashScreen.dart';
import 'startingpages/welcomePage.dart';
import 'startingpages/loginPage.dart';
import 'startingpages/signuppages/signup1.dart';
import 'startingpages/signuppages/signup2.dart';
import 'startingpages/allsetPage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'homepages/homepage2.dart';
import 'homepages/homepage3.dart';
import 'homepages/homepage4.dart';
import 'package:basickneads/constants2.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      routes: {
        '/welcomepage': (context) => WelcomePage(),
        '/loginpage': (context) => LoginPage(),
        '/signup1': (context) => Signup1(),
        '/signup2': (context) => Signup2(),
        '/allsetpage': (context) => AllSetPage(),
        '/HomePage_Meals': (context) => HomePageMeals(),
        '/HomePage_MyPlate': (context) => HomePage1(),
        '/HomePage_Snacks': (context) => HomePageSnacks(),
        '/HomePage_Drinks': (context) => HomePageDrinks(),
      },
    );
  }
}

class HomePage1 extends StatefulWidget {
  @override
  _HomePage1State createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/home_back.png'), fit: BoxFit.cover),
        ),
        child: Scaffold(
          appBar: new AppBar(
            automaticallyImplyLeading: false,
            leading: Icon(
              Icons.menu,
              color: Colors.black,
            ),
            centerTitle: true,
            title: new Text(
              "Basic Kneads",
              style: TextStyle(
                  fontFamily: 'Pacifico', fontSize: 40, color: Colors.black),
            ),
            backgroundColor: Colors.transparent,
            elevation: 0.0,
          ),
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: new Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Material(
                    elevation: 30.0,
                    borderRadius: BorderRadius.circular(25.0),
                    child: new TextFormField(
                        decoration: new InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(25.0)),
                      labelText: "Search",
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      contentPadding:
                          EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                    )),
                  ),
                ),
                new Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                      child: SizedBox(
                        width: 80.0,
                        height: 200.0,
                        child: RaisedButton(
                          color: Colors.yellow[800],
                          onPressed: () {
                            Navigator.pushNamed(context, '/HomePage_MyPlate');
                          },
                          textColor: Colors.black,
                          child: Container(
                            width: 80.0,
                            height: 200.0,
                            child: new Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      0.0, 30.0, 0.0, 0.0),
                                  child: Image(
                                    image: AssetImage('images/plate.png'),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      0.0, 30.0, 0.0, 0.0),
                                  child: Text(
                                    '  My Plate',
                                    style: TextStyle(
                                        fontSize: 16.0, fontFamily: 'PoppinsL'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(40.0)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                      child: SizedBox(
                        width: 80.0,
                        height: 200.0,
                        child: RaisedButton(
                          color: Colors.grey[500],
                          onPressed: () {
                            Navigator.pushNamed(context, '/HomePage_Meals');
                          },
                          textColor: Colors.black,
                          child: Container(
                            width: 80.0,
                            height: 200.0,
                            child: new Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      0.0, 30.0, 0.0, 0.0),
                                  child: Image(
                                    image: AssetImage('images/meals.png'),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      0.0, 30.0, 0.0, 0.0),
                                  child: Text(
                                    'Meals',
                                    style: TextStyle(
                                        fontSize: 14.0, fontFamily: 'PoppinsL'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(40.0)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                      child: SizedBox(
                        width: 80.0,
                        height: 200.0,
                        child: RaisedButton(
                          color: Colors.grey[500],
                          onPressed: () {
                            Navigator.pushNamed(context, '/HomePage_Snacks');
                          },
                          textColor: Colors.black,
                          child: Container(
                            width: 80.0,
                            height: 200.0,
                            child: new Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      0.0, 30.0, 0.0, 0.0),
                                  child: Image(
                                    image: AssetImage('images/snacks.png'),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      0.0, 30.0, 0.0, 0.0),
                                  child: Text(
                                    'Snacks',
                                    style: TextStyle(
                                        fontSize: 12.0, fontFamily: 'PoppinsL'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(40.0)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                      child: SizedBox(
                        width: 80.0,
                        height: 200.0,
                        child: RaisedButton(
                          color: Colors.grey[500],
                          onPressed: () {
                            Navigator.pushNamed(context, '/HomePage_Drinks');
                          },
                          textColor: Colors.black,
                          child: Container(
                            width: 80.0,
                            height: 200.0,
                            child: new Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      0.0, 30.0, 0.0, 0.0),
                                  child: Image(
                                    image: AssetImage('images/drinks.png'),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(
                                      0.0, 30.0, 0.0, 0.0),
                                  child: Text(
                                    'Drinks',
                                    style: TextStyle(
                                        fontSize: 14.0, fontFamily: 'PoppinsL'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(40.0)),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                  child: Text(
                    'Diet for the day',
                    style: TextStyle(fontFamily: 'PoppinsM', fontSize: 24.0),
                  ),
                ),
                Container(
                  height: 400.0,
                  width: 380.0,
                  child: ListView(
                    physics: AlwaysScrollableScrollPhysics(),
                    children: <Widget>[
                      FoodItemCard(
                        foodname: 'Roti Curry',
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      FoodItemCard(
                        foodname: 'Sandwhich',
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      FoodItemCard(
                        foodname: 'Filter Coffee',
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      FoodItemCard(
                        foodname: 'Lays chips',
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
