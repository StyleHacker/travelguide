import 'package:flutter/material.dart';

class IslandGridView extends StatelessWidget {
  static const routt = '/islanddetails';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final Islandd =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final String iId = Islandd['id'];
    final String iname = Islandd['title'];
    final String iimage = Islandd['image'];
    final String idescription = Islandd['description'];
    final String iactivity = Islandd['activity'];
    final String iplace = Islandd['place'];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(iname),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(iimage), fit: BoxFit.cover),
              ),
              height: size.height * 0.4,
              width: double.infinity,
            ),
            Container(
              margin: EdgeInsets.only(top: size.height * 0.36),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(35),
              ),
              child: Padding(
                padding: EdgeInsets.all(30.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 150,
                      height: 7,
                      decoration: BoxDecoration(
                        color: Colors.red[50],
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      idescription,
                      style: TextStyle(
                        fontFamily: 'RobotoSlab',
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      'Explore Things',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 30.0,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(height: 10),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Center(
                          child: Text(
                            iactivity,
                            style: TextStyle(
                                fontFamily: 'RobotoSlab',
                                fontWeight: FontWeight.w700,
                                fontSize: 20),
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      'Attractions',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 30.0,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(height: 10),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Center(
                          child: Text(
                            iplace,
                            style: TextStyle(
                                fontFamily: 'RobotoSlab',
                                fontWeight: FontWeight.w700,
                                fontSize: 20),
                            textAlign: TextAlign.start,
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
    ;
  }
}
