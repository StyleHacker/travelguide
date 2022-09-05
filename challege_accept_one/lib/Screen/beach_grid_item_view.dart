import 'package:flutter/material.dart';

class BeachGridItemView extends StatelessWidget {
  static const routName = "/beachDetails";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final beachdetails =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final bId = beachdetails['id'];
    final bname = beachdetails['name'];
    final bImage = beachdetails['image'];
    final bDescription = beachdetails['descriptions'];
    final bactivity = beachdetails['activity'];
    return Scaffold(
      appBar: AppBar(
        title: Text('Beach'),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              height: size.height * 0.4,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(bImage), fit: BoxFit.cover),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: size.height * 0.37),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 7,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.red[50],
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Card(
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            bDescription,
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      'Activities',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Card(
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            bactivity,
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    )
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
