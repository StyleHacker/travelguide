import 'package:challege_accept_one/Screen/hill_grid_item_view.dart';
import 'package:flutter/material.dart';

import '../widget/hill_cate_data.dart';

class CategoryHillScreen extends StatefulWidget {
  @override
  _CategoryHillScreenState createState() => _CategoryHillScreenState();
}

class _CategoryHillScreenState extends State<CategoryHillScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hill Stations'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GridView(
            children: Hill_Details.map(
              (h) => HillGridItemView(
                h.hid,
                h.hname,
                h.himage,
                h.hdescription,
                h.hactivity,
                h.hplaces,
              ),
            ).toList(),
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              childAspectRatio: 4 / 4,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              maxCrossAxisExtent: 200,
            )),
      ),
    );
  }
}
