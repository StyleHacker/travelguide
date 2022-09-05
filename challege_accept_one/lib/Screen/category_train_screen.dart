import 'package:challege_accept_one/Screen/train_grid_item_view.dart';
import 'package:flutter/material.dart';

import '../tain_cate_data.dart';

class TrainCategory extends StatefulWidget {
  @override
  _TrainCategoryState createState() => _TrainCategoryState();
}

class _TrainCategoryState extends State<TrainCategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cruise Ship'),
      ),
      body: GridView(
        padding: EdgeInsets.all(20),
        children: train_detail
            .map((e) => TrainGridItemView(
                  e.tId,
                  e.tName,
                  e.tImage,
                  e.tDescription,
                  e.trainss,
                  e.imageUrl,
                ))
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            childAspectRatio: 4 / 4,
            maxCrossAxisExtent: 200,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
      ),
    );
  }
}
