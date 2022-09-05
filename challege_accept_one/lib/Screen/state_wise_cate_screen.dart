// import 'package:flutter/material.dart';
//
// import '../Screen/state_view_screen.dart';
// import '../widget/state_wise_cate_data.dart';
//
// class StateWiseCateScreen extends StatefulWidget {
//   @override
//   _StateWiseCateScreenState createState() => _StateWiseCateScreenState();
// }
//
// class _StateWiseCateScreenState extends State<StateWiseCateScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Cruise Ship'),
//       ),
//       body: GridView(
//         padding: EdgeInsets.all(20),
//         children: State_details.map((e) => StateViewScreen(
//               e.name,
//               e.image,
//             )).toList(),
//         gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
//             childAspectRatio: 4 / 4,
//             maxCrossAxisExtent: 200,
//             crossAxisSpacing: 20,
//             mainAxisSpacing: 20),
//       ),
//     );
//     ;
//   }
// }
