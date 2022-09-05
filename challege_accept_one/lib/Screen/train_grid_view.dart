import 'package:flutter/material.dart';

class TrainGridView extends StatelessWidget {
  static const routeN = '/trainGridDetails';
  @override
  Widget build(BuildContext context) {
    final trainD =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final trId = trainD['id'];
    final trname = trainD['title'];
    final trimage = trainD['image'];
    final trdescription = trainD['description'];
    final trai = trainD['train'];
    final imageurl = trainD['imageurl'];
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(trname),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(trimage), fit: BoxFit.cover),
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
                      trdescription,
                      style: TextStyle(
                        fontFamily: 'RobotoSlab',
                        fontSize: 20.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      'Trains to Travel',
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
                            trai,
                            style: TextStyle(
                                fontFamily: 'RobotoSlab',
                                fontWeight: FontWeight.w700,
                                fontSize: 20),
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ),
                    ),
                    Image.network(imageurl)
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
