import 'package:flutter/material.dart';

import '../Screen/ship_grid_view.dart';

class GridViewItem extends StatelessWidget {
  final String title;
  final String imagess;
  final String CateId;
  final String sdestination;
  final String sacivity;
  final String sdescription;
  GridViewItem(this.title, this.imagess, this.CateId, this.sdestination,
      this.sacivity, this.sdescription);
  void selectGrid(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      ShipGridView.routeName,
      arguments: {
        'title': title,
        'id': CateId,
        'image': imagess,
        'destination': sdestination,
        'activity': sacivity,
        'description': sdescription,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectGrid(context),
      splashColor: Colors.teal,
      child: Container(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Text(
            title,
            style: TextStyle(
                fontFamily: 'RobotoSlab',
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 25),
            textAlign: TextAlign.center,
          ),
        ),
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imagess),
              fit: BoxFit.cover,
            ),
            color: Colors.black,
            borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
