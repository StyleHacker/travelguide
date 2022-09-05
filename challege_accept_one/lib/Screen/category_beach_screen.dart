import 'package:flutter/material.dart';

import '../Screen/beaches_item_grid.dart';
import '../widget/beach_cate_data.dart';

class Category_Beach_Screen extends StatefulWidget {
  @override
  _Category_Beach_ScreenState createState() => _Category_Beach_ScreenState();
}

class _Category_Beach_ScreenState extends State<Category_Beach_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Beaches"),
      ),
      body: GridView(
        padding: EdgeInsets.all(20.0),
        children: Beach_Details.map((b) => BeachesItemGrid(
            b.bId, b.bname, b.bImage, b.bdescription, b.bactivity)).toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            childAspectRatio: 4 / 4,
            maxCrossAxisExtent: 200,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20),
      ),
    );
  }
}
