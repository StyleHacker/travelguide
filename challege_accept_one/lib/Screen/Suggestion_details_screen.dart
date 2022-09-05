import 'package:challege_accept_one/model/suggestion_model.dart';
import 'package:flutter/material.dart';

class SuggestionScreen extends StatefulWidget {
  final Hotel hotel;

  SuggestionScreen({this.hotel});

  @override
  _SuggestionScreenState createState() => _SuggestionScreenState();
}

class _SuggestionScreenState extends State<SuggestionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: getBody(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Stack(
        children: <Widget>[
          Container(
            width: size.width,
            height: size.height * 0.5,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(widget.hotel.imageUrl),
              fit: BoxFit.cover,
            )),
          ),
          Container(
            margin: EdgeInsets.only(top: size.height * 0.45),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                children: <Widget>[
                  Container(
                    width: 150,
                    height: 7,
                    decoration: BoxDecoration(
                      color: Colors.red[50],
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Text(widget.hotel.name),
                  SizedBox(height: 10.0),
                  Text(widget.hotel.description),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
