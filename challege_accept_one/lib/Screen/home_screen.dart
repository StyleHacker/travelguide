import 'package:challege_accept_one/widget/suggestion_carosel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './category_bike_screen.dart';
import '../Screen/Category_ship_screen.dart';
import '../Screen/category_beach_screen.dart';
import '../Screen/category_hill_screen.dart';
import '../Screen/category_island_screen.dart';
import '../Screen/category_train_screen.dart';
import 'category_car_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   title: Text(
      //     'Home',
      //     style: TextStyle(color: Colors.black),
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 200,
              child: Text(
                'Explore the \n yourself with Nature',
                style: TextStyle(
                    fontFamily: 'Playball',
                    fontSize: 50,
                    fontWeight: FontWeight.w500),
              ),
              width: double.infinity,
              color: Colors.white,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              width: double.infinity,
              height: 90,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => ShipCategory(),
                        )),
                    child: Container(
                      height: 100,
                      width: 120.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Image.asset(
                          'images/ship.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (_) => TrainCategory())),
                    child: Container(
                      height: 100,
                      width: 120.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Image.asset(
                          'images/pamban.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (_) => CategoryCarScreen())),
                    child: Container(
                      height: 100,
                      width: 120.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Image.asset(
                          'images/car.webp',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => CategoryBikeScreen()),
                    ),
                    child: Container(
                      height: 100,
                      width: 120.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Image.asset(
                          'images/bike.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SuggestionCarosel(),
            Container(
                height: 250,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => Category_Beach_Screen())),
                      child: Container(
                        margin: EdgeInsets.all(15.0),
                        width: 150,
                        height: 200,
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              bottom: 10.0,
                              child: Container(
                                height: 50,
                                width: 150,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(color: Colors.black45)
                                    ]),
                                child: Center(
                                  child: Text(
                                    "Beaches",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.w500),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: Image(
                                height: 170,
                                width: 150,
                                image: AssetImage("images/beaches1.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => CategoryHillScreen(),
                          )),
                      child: Container(
                        margin: EdgeInsets.all(15.0),
                        width: 150,
                        height: 200,
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              bottom: 10.0,
                              child: Container(
                                height: 50,
                                width: 150,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(color: Colors.black45)
                                    ]),
                                child: Center(
                                  child: Text(
                                    "Hill Station",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.w500),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: Image(
                                height: 170,
                                width: 150,
                                image: AssetImage("images/hill1.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => CategoryIslandScreen())),
                      child: Container(
                        margin: EdgeInsets.all(15.0),
                        width: 150,
                        height: 200,
                        child: Stack(
                          children: <Widget>[
                            Positioned(
                              bottom: 10.0,
                              child: Container(
                                height: 50,
                                width: 150,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(color: Colors.black45)
                                    ]),
                                child: Center(
                                  child: Text(
                                    "Island",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.w500),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: Image(
                                height: 170,
                                width: 150,
                                image: AssetImage("images/island1.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
