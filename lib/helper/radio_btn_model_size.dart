// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class RadioGroup extends StatefulWidget {
//   @override
//   RadioGroupWidget createState() => RadioGroupWidget();
// }
//
// class FruitsList {
//   String name;
//   int index;
//   FruitsList({required this.name, required this.index});
// }
//
// class RadioGroupWidget extends State {
//
//   // Default Radio Button Item
//   String radioItem = 'Mango';
//
//   // Group Value for Radio Button.
//   int id = 1;
//
//   List<FruitsList> fList = [
//     FruitsList(
//       index: 1,
//       name: "Mango",
//     ),
//     FruitsList(
//       index: 2,
//       name: "Apple",
//     ),
//     FruitsList(
//       index: 3,
//       name: "Banana",
//     ),
//     FruitsList(
//       index: 4,
//       name: "Cherry",
//     ),
//   ];
//
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         Padding(
//             padding : EdgeInsets.all(14.0),
//             child: Text('$radioItem', style: TextStyle(fontSize: 23))
//         ),
//
//         Container(
//           height: 50.0,
//           child: Column(
//             children:
//             fList.map((data) => SizedBox(
//               height: 100,
//               width: 100,
//               child: RadioListTile(
//                 title: Text("${data.name}"),
//                 groupValue: id,
//                 value: data.index,
//                 onChanged: (val) {
//                   setState(() {
//                     radioItem = data.name ;
//                     id = data.index;
//                   });
//                 },
//               ),
//             )).toList(),
//           ),
//         ),
//
//       ],
//     );
//   }
// }