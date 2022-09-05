import 'package:challege_accept_one/Screen/island_grid_item_view.dart';
import 'package:flutter/material.dart';

import '../widget/island_cate_data.dart';

class CategoryIslandScreen extends StatefulWidget {
  @override
  _CategoryIslandScreenState createState() => _CategoryIslandScreenState();
}

class _CategoryIslandScreenState extends State<CategoryIslandScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Island'),
      ),
      body: GridView(
        padding: EdgeInsets.all(10),
        children: Island_Details.map(
          (i) => IslandGridItemView(
              i.Iid, i.iname, i.iimage, i.idescription, i.iactivity, i.iplace),
        ).toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          childAspectRatio: 4 / 4,
          maxCrossAxisExtent: 200,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
    ;
  }
}
