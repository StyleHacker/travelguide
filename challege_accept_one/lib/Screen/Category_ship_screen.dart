import 'package:flutter/material.dart';

import '../Screen/grid_item_view.dart';
import '../category_data.dart';

class ShipCategory extends StatefulWidget {
  @override
  _ShipCategoryState createState() => _ShipCategoryState();
}

class _ShipCategoryState extends State<ShipCategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cruise Ship'),
      ),
      body: GridView(
        padding: EdgeInsets.all(20),
        children: Category_data.map((e) => GridViewItem(e.title, e.image, e.id,
            e.destination, e.shipActivity, e.desctiption)).toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            childAspectRatio: 4 / 4,
            maxCrossAxisExtent: 200,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
      ),
    );
  }
}
