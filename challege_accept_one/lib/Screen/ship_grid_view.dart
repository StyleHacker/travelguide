import 'package:flutter/material.dart';

class ShipGridView extends StatelessWidget {
  static const routeName = '/shipGridDetails';

  @override
  Widget build(BuildContext context) {
    final shipTitle =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final shipTilee = shipTitle['title'];
    final shipIdd = shipTitle['id'];
    final shipImage = shipTitle['image'];
    final shipdestination = shipTitle['destination'];
    final shipacvity = shipTitle['activity'];
    final shipdescription = shipTitle['description'];
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(shipTilee),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              height: size.height * 0.4,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(shipImage),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: size.height * 0.36),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.white,
              ),
              child: Padding(
                padding: EdgeInsets.all(30.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 7,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.red[50],
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Text(
                          shipdescription,
                          style: TextStyle(fontFamily: 'Lobster', fontSize: 20),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      'Ship Destinations',
                      style: TextStyle(
                        fontFamily: 'OleoScript',
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Card(
                      child: Center(
                        child: Text(
                          shipdestination,
                          style: TextStyle(
                            fontFamily: 'Pacifico',
                            fontWeight: FontWeight.w500,
                            fontSize: 20.0,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      'Ship Activitys',
                      style: TextStyle(
                          fontFamily: 'Pacifico',
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold),
                    ),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(50.0),
                        child: Center(
                          child: Text(
                            shipacvity,
                            style: TextStyle(
                                fontFamily: 'Playball',
                                fontWeight: FontWeight.w500,
                                fontSize: 40.0,
                                color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
