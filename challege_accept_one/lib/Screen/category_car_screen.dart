import 'package:flutter/material.dart';

import '../widget/car_cate_data.dart';
import 'car_grid_item_view.dart';

class CategoryCarScreen extends StatefulWidget {
  @override
  _CategoryCarScreenState createState() => _CategoryCarScreenState();
}

class _CategoryCarScreenState extends State<CategoryCarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Car'),
      ),
      body: GridView(
        padding: EdgeInsets.all(20.0),
        children: Car_Data.map(
          (c) => CarGridItemView(
              c.cid, c.cname, c.cimage, c.days, c.croutes, c.cdescription),
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
