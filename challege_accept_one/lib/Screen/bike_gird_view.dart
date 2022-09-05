import 'package:flutter/material.dart';

class BikeGridView extends StatelessWidget {
  static const routenam = '/bikedetails';
  @override
  Widget build(BuildContext context) {
    final bikedetail =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final bikeId = bikedetail['id'];
    final bikename = bikedetail['name'];
    final bikeimage = bikedetail['image'];
    final bdescription = bikedetail['description'];
    final broute = bikedetail['route'];
    final bseason = bikedetail['season'];
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(bikename),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              height: size.height * 0.4,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(bikeimage),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: size.height * 0.37),
              width: double.infinity,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 7,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.red[50],
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Card(
                      child: Center(
                        child: Text(
                          bdescription,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: 'pacifico',
                            fontSize: 25.0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      'Travel Route',
                      style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Card(
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            broute,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'To Explore $bseason',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0,
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
