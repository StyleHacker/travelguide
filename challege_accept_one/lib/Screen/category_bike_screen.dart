import 'package:flutter/material.dart';

import '../Screen/bike_grid_item_view.dart';
import '../widget/bike_cate_data.dart';

class CategoryBikeScreen extends StatefulWidget {
  @override
  _CategoryBikeScreenState createState() => _CategoryBikeScreenState();
}

class _CategoryBikeScreenState extends State<CategoryBikeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Car Ride'),
      ),
      body: GridView(
        padding: EdgeInsets.all(10),
        children: Bike_Data.map(
          (bk) => BikeGridItemView(bk.bkid, bk.bkname, bk.bkimage, bk.bkroute,
              bk.bkdescription, bk.bkseason),
        ).toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          childAspectRatio: 4 / 4,
          maxCrossAxisExtent: 200,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}
