import 'package:flutter/material.dart';

class HillGridView extends StatelessWidget {
  static const routeee = '/hildetails';
  @override
  Widget build(BuildContext context) {
    final Hilldetail =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final hId = Hilldetail['id'];
    final hNmae = Hilldetail['name'];
    final himage = Hilldetail['image'];
    final hDescription = Hilldetail['description'];
    final hActivity = Hilldetail['activity'];
    final hPlace = Hilldetail['place'];
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(hNmae),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              height: size.height * 0.4,
              width: double.infinity,
              child: Image.asset(
                himage,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: size.height * 0.37),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
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
                    SizedBox(height: 20),
                    Card(
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(hDescription),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Explore Things',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'RobotoSlab'),
                    ),
                    SizedBox(height: 10),
                    Card(
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            hActivity,
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'pacifico'),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Attraction',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'RobotoSlab'),
                    ),
                    SizedBox(height: 10),
                    Card(
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            hPlace,
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                fontFamily: 'pacifico'),
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
