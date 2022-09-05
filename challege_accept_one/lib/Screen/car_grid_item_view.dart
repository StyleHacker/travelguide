import 'package:challege_accept_one/Screen/car_grid_view.dart';
import 'package:flutter/material.dart';

class CarGridItemView extends StatelessWidget {
  final String cId;
  final String cName;
  final String cImage;
  final String cdays;
  final String cRoutes;
  final String cDescription;
  CarGridItemView(this.cId, this.cName, this.cImage, this.cdays, this.cRoutes,
      this.cDescription);
  void Selectcargrid(BuildContext context) {
    Navigator.pushNamed(context, CarGridView.rotueNam, arguments: {
      'id': cId,
      'name': cName,
      'image': cImage,
      'days': cdays,
      'routes': cRoutes,
      'description': cDescription,
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Selectcargrid(context),
      child: Container(
        child: Center(
            child: Text(
          cName,
          style: TextStyle(
            color: Colors.white,
          ),
        )),
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(cImage),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
