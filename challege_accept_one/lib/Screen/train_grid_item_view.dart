import 'package:flutter/material.dart';

import '../Screen/train_grid_view.dart';

class TrainGridItemView extends StatelessWidget {
  final String tId;
  final String tNamee;
  final String tImage;
  final String tdescription;
  final String trains;
  final String tImageUrl;
  TrainGridItemView(
    this.tId,
    this.tNamee,
    this.tImage,
    this.tdescription,
    this.trains,
    this.tImageUrl,
  );

  void selectGridd(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      TrainGridView.routeN,
      arguments: {
        'title': tNamee,
        'id': tId,
        'image': tImage,
        'description': tdescription,
        'train': trains,
        'imageurl': tImageUrl,
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
            tNamee,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
            textAlign: TextAlign.center,
          ),
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(tImage),
            fit: BoxFit.cover,
          ),
          color: Colors.black,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
