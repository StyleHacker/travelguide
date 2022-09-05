import 'package:flutter/material.dart';

import '../Screen/bike_gird_view.dart';

class BikeGridItemView extends StatelessWidget {
  final String bkId;
  final String bkName;
  final String bkImage;
  final String bkRoute;
  final String bkDescription;
  final String bkSeason;
  BikeGridItemView(this.bkId, this.bkName, this.bkImage, this.bkRoute,
      this.bkDescription, this.bkSeason);

  void Selectbikegrid(BuildContext context) {
    Navigator.pushNamed(context, BikeGridView.routenam, arguments: {
      'id': bkId,
      'name': bkName,
      'image': bkImage,
      'route': bkRoute,
      'description': bkDescription,
      'season': bkSeason
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Selectbikegrid(context),
      child: Container(
        child: Center(
          child: Text(
            bkName,
            style: TextStyle(
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(bkImage),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
