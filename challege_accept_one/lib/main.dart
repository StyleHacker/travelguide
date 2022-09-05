import 'package:flutter/material.dart';

import './Screen/beach_grid_item_view.dart';
import './Screen/bike_gird_view.dart';
import './Screen/car_grid_view.dart';
import './Screen/hill_grid_view.dart';
import './Screen/island_grid_view.dart';
import './Screen/ship_grid_view.dart';
import './Screen/tab_screen.dart';
import './Screen/train_grid_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TabsScreen(),
      routes: {
        ShipGridView.routeName: (ctx) => ShipGridView(),
        TrainGridView.routeN: (ctx) => TrainGridView(),
        BeachGridItemView.routName: (ctx) => BeachGridItemView(),
        CarGridView.rotueNam: (ctx) => CarGridView(),
        BikeGridView.routenam: (ctx) => BikeGridView(),
        HillGridView.routeee: (ctx) => HillGridView(),
        IslandGridView.routt: (ctx) => IslandGridView(),
      },
    );
  }
}
