import 'package:flutter/material.dart';
import 'package:basickneads/constants2.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

var _firestore = FirebaseFirestore.instance;

class HomePageDrinks extends StatefulWidget {
  @override
  _HomePageDrinksState createState() => _HomePageDrinksState();
}

class _HomePageDrinksState extends State<HomePageDrinks> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                    contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                  )),
                ),
              ),
              new Row(
                children: <Widget>[
                  MenuButtons(
                    buttontitle: '  My plate',
                    imagename: 'images/plate.png',
                    fontsize: 16.0,
                    buttoncolor: Colors.grey[500],
                    pageonclick: '/HomePage_MyPlate',
                  ),
                  MenuButtons(
                    buttontitle: 'Meals',
                    imagename: 'images/meals.png',
                    fontsize: 14.0,
                    buttoncolor: Colors.grey[500],
                    pageonclick: '/HomePage_Meals',
                  ),
                  MenuButtons(
                    buttontitle: 'Snacks',
                    imagename: 'images/snacks_2.png',
                    fontsize: 12.0,
                    buttoncolor: Colors.grey[500],
                    pageonclick: '/HomePage_Snacks',
                  ),
                  MenuButtons(
                    buttontitle: 'Drinks',
                    imagename: 'images/drinks.png',
                    fontsize: 14.0,
                    buttoncolor: Colors.yellow[800],
                    pageonclick: '/HomePage_Drinks',
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                child: Text(
                  'Drinks',
                  style: TextStyle(fontFamily: 'PoppinsM', fontSize: 24.0),
                ),
              ),
              Container(
                height: 400.0,
                width: 380.0,
                child: StreamBuilder(
                  stream: _firestore.collection('drinks').snapshots(),
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) {
                      return Center(
                        child: CircularProgressIndicator(
                          backgroundColor: Colors.orange[400],
                        ),
                      );
                    }
                    final drinks = snapshot.data.documents;
                    List<FoodItemCard> drinksMenu = [];
                    for (var drink in drinks) {
                      final drinkName = drink.get('Name');
                      final drinkPrice = drink.get('Price');
                      final drinkWidget = FoodItemCard(
                        foodname: drinkName,
                        price: drinkPrice,
                      );
                      drinksMenu.add(drinkWidget);
                    }
                    return Expanded(
                      child: ListView(
                        shrinkWrap: true,
                        children: drinksMenu,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
