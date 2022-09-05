import 'package:flutter/material.dart';

import '../Screen/hill_grid_view.dart';

class HillGridItemView extends StatelessWidget {
  final String Hid;
  final String Hname;
  final String Himage;
  final String Hdescription;
  final String Hactivity;
  final String Hplace;
  HillGridItemView(this.Hid, this.Hname, this.Himage, this.Hdescription,
      this.Hactivity, this.Hplace);

  void selecthillg(BuildContext context) {
    Navigator.of(context).pushNamed(
      HillGridView.routeee,
      arguments: {
        'id': Hid,
        'name': Hname,
        'image': Himage,
        'description': Hdescription,
        'activity': Hactivity,
        'place': Hplace,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selecthillg(context),
      child: Container(
        child: Center(
          child: Text(
            Hname,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ),
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(Himage), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
    );
  }
}
