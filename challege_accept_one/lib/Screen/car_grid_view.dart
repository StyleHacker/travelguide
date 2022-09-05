import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CarGridView extends StatefulWidget {
  static const rotueNam = '/Cardetails';
  @override
  _CarGridViewState createState() => _CarGridViewState();
}

class _CarGridViewState extends State<CarGridView> {
  @override
  Widget build(BuildContext context) {
    final cardetaill =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final carId = cardetaill['id'];
    final carname = cardetaill['name'];
    final cimage = cardetaill['image'];
    final cdays = cardetaill['days'];
    final croutes = cardetaill['routes'];
    final cdescription = cardetaill['description'];
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(carname),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(cimage),
                  fit: BoxFit.cover,
                ),
              ),
              height: size.height * 0.4,
              width: double.infinity,
            ),
            Container(
              margin: EdgeInsets.only(top: size.height * 0.37),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.white,
              ),
              child: Padding(
                padding: EdgeInsets.all(20.0),
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
                    SizedBox(height: 20),
                    Card(
                      child: Center(
                        child: Text(
                          cdescription,
                          style: TextStyle(
                            fontFamily: 'OleoScript',
                            fontSize: 30.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      'Days to travel',
                      style: TextStyle(fontSize: 30.0),
                    ),
                    Card(
                      child: Center(
                        child: Text(
                          cdays,
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 30.0,
                              fontFamily: 'OleoScript'),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      'Routes',
                      style: TextStyle(fontSize: 30.0),
                    ),
                    Card(
                      child: Center(
                        child: Text(
                          croutes,
                          style: TextStyle(
                            fontSize: 20.0,
                            fontFamily: 'RobotoSlab',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
