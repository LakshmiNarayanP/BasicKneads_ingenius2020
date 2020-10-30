import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:trial/homepage2.dart';
import 'package:trial/homepage3.dart';
import 'package:trial/homepage4.dart';
import 'package:trial/constants2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage_Meals(),
      routes: <String, WidgetBuilder>{
        '/HomePage_Meals': (context) => HomePage_Meals(),
        '/HomePage_MyPlate': (context) => HomePage1(),
        '/HomePage_Snacks': (context) => HomePage_Snacks(),
        '/HomePage_Drinks': (context) => HomePage_Drinks(),
      },
    );
  }
}

// class _BaseHomeState extends State<BaseHome> {
//   int _selectedPage = 0;
//   final _pageOptions = [
//     HomePage1(),
//     //StatusPage()
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _pageOptions[_selectedPage],
//       bottomNavigationBar: BottomNavigationBar(
//         selectedItemColor: Colors.black,
//         unselectedItemColor: Colors.grey[500],
//         type: BottomNavigationBarType.fixed,
//         currentIndex: _selectedPage,
//         onTap: (int index) {
//           setState(() {
//             _selectedPage = index;
//           });
//         },
//         backgroundColor: Colors.grey[400],
//         items: <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             title: Text('Home'),
//             activeIcon: new Icon(
//               Icons.home,
//               color: Colors.black,
//             ),
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.timer),
//             title: Text('Status'),
//             activeIcon: new Icon(
//               Icons.timer,
//               color: Colors.black,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

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
                      //icon: new Icon(Icons.search),
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
                    // MenuButtons(
                    //   buttontitle: '  My plate',
                    //   imagename: 'images/plate.png',
                    //   fontsize: 16.0,
                    //   buttoncolor: Colors.yellow[800],
                    //   pageonclick: '/HomePage_MyPlate',
                    // ),
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
                    // MenuButtons(
                    //   buttontitle: 'Meals',
                    //   imagename: 'images/meals.png',
                    //   fontsize: 14.0,
                    //   buttoncolor: Colors.grey[500],
                    //   pageonclick: '/HomePage_Meals',
                    // ),
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
                    // MenuButtons(
                    //   buttontitle: 'Snacks',
                    //   imagename: 'images/snacks_2.png',
                    //   fontsize: 12.0,
                    //   buttoncolor: Colors.grey[500],
                    //   pageonclick: '/HomePage_Snacks',
                    // ),
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
                    // MenuButtons(
                    //   buttontitle: 'Drinks',
                    //   imagename: 'images/drinks.png',
                    //   fontsize: 14.0,
                    //   buttoncolor: Colors.grey[500],
                    //   pageonclick: '/HomePage_Drinks',
                    // ),
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
                    //shrinkWrap: true,
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
