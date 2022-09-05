import 'package:flutter/material.dart';

import '../Screen/beach_grid_item_view.dart';

class BeachesItemGrid extends StatelessWidget {
  final String bId;
  final String bname;
  final String bimage;
  final String bdescription;
  final String bactivity;
  BeachesItemGrid(
      this.bId, this.bname, this.bimage, this.bdescription, this.bactivity);
  @override
  Widget build(BuildContext context) {
    void SelectGriid(BuildContext ctx) {
      Navigator.pushNamed(ctx, BeachGridItemView.routName, arguments: {
        'id': bId,
        'name': bname,
        'image': bimage,
        'descriptions': bdescription,
        'activity': bactivity
      });
    }

    return InkWell(
      onTap: () => SelectGriid(context),
      child: Container(
        child: Center(
          child: Text(
            bname,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 25,
            ),
          ),
        ),
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(bimage), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
    );
  }
}
