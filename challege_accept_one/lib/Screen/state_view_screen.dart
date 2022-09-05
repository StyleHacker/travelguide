import 'package:flutter/material.dart';

class StateViewScreen extends StatelessWidget {
  // final String name;
  // final String image;
  // StateViewScreen(this.name, this.image);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          " name",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
      decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/kk.jpg"),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(20.0)),
    );
  }
}
