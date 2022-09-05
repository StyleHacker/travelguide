import 'package:flutter/material.dart';

import '../Screen/island_grid_view.dart';

class IslandGridItemView extends StatelessWidget {
  final String Iid;
  final String Iname;
  final String Iimage;
  final String Idescription;
  final String Iactivity;
  final String Iplace;
  IslandGridItemView(this.Iid, this.Iname, this.Iimage, this.Idescription,
      this.Iactivity, this.Iplace);
  void selectGridd(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      IslandGridView.routt,
      arguments: {
        'title': Iname,
        'id': Iid,
        'image': Iimage,
        'description': Idescription,
        'activity': Iactivity,
        'place': Iplace,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectGridd(context),
      splashColor: Colors.teal,
      child: Container(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Text(
            Iname,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
            textAlign: TextAlign.center,
          ),
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Iimage),
            fit: BoxFit.cover,
          ),
          color: Colors.black,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
    ;
  }
}
