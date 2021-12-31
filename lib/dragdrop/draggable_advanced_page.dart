// import 'data.dart';
// import '../main.dart';
// import 'utils.dart';
// import 'draggable_widget.dart';
// import 'package:flutter/material.dart';

// class DraggableAdvancedPage extends StatefulWidget {
//   @override
//   _DraggableAdvancedPageState createState() => _DraggableAdvancedPageState();
// }

// class _DraggableAdvancedPageState extends State<DraggableAdvancedPage> {
//   //var player = AudioCache();
//   final List<Animal> all = allAnimals;
//   final List<Animal> land = [];
//   final List<Animal> air = [];
//   final List<Animal> fruits = [];
//   final List<Animal> number = [];

//   final double size = 150;

//   void removeAll(Animal toRemove) {
//     all.removeWhere((animal) => animal.imageUrl == toRemove.imageUrl);
//     land.removeWhere((animal) => animal.imageUrl == toRemove.imageUrl);
//     air.removeWhere((animal) => animal.imageUrl == toRemove.imageUrl);
//     fruits.removeWhere((animal) => animal.imageUrl == toRemove.imageUrl);
//     number.removeWhere((animal) => animal.imageUrl == toRemove.imageUrl);
//   }

//   @override
//   Widget build(BuildContext context) => Scaffold(
//         appBar: AppBar(
//           title: Text("Classify the Parts of speech"),
//           centerTitle: true,
//           backgroundColor: Colors.green,
//         ),
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: <Widget>[
//             buildTarget(
//               context,
//               text: 'All',
//               animals: all,
//               acceptTypes: AnimalType.values,
//               onAccept: (data) => setState(() {
//                 removeAll(data);
//                 all.add(data);
//               }),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: <Widget>[
//                 buildTarget(
//                   context,
//                   text: 'Noun',
//                   animals: land,
//                   acceptTypes: [AnimalType.land],
//                   onAccept: (data) => setState(() {
//                     removeAll(data);
//                     land.add(data);
//                   }),
//                 ),
//                 buildTarget(
//                   context,
//                   text: 'Verb',
//                   animals: air,
//                   acceptTypes: [AnimalType.air],
//                   onAccept: (data) => setState(() {
//                     removeAll(data);
//                     air.add(data);
//                   }),
//                 ),
//                 // buildTarget(
//                 //   context,
//                 //   text: 'Fruits',
//                 //   animals: air,
//                 //   acceptTypes: [AnimalType.air],
//                 //   onAccept: (data) => setState(() {
//                 //     removeAll(data);
//                 //     air.add(data);
//                 //   }),
//                 // ),
//               ],
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: <Widget>[
//                 buildTarget(
//                   context,
//                   text: 'Adjective',
//                   animals: fruits,
//                   acceptTypes: [AnimalType.fruits],
//                   onAccept: (data) => setState(() {
//                     removeAll(data);
//                     fruits.add(data);
//                   }),
//                 ),
//                 buildTarget(
//                   context,
//                   text: 'Adverb',
//                   animals: number,
//                   acceptTypes: [AnimalType.number],
//                   onAccept: (data) => setState(() {
//                     removeAll(data);
//                     number.add(data);
//                   }),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       );

//   Widget buildTarget(
//     BuildContext context, {
//     String text,
//     List<Animal> animals,
//     List<AnimalType> acceptTypes,
//     DragTargetAccept<Animal> onAccept,
//   }) =>
//       CircleAvatar(
//         radius: size / 2,
//         child: DragTarget<Animal>(
//           builder: (context, candidateData, rejectedData) => Stack(
//             children: [
//               ...animals
//                   .map((animal) => DraggableWidget(
//                         animal: animal,
//                         key: null,
//                       ))
//                   .toList(),
//               IgnorePointer(child: Center(child: buildText(text))),
//             ],
//           ),
//           onWillAccept: (data) => true,
//           onAccept: (data) {
//             if (acceptTypes.contains(data.type)) {
//               Utils.showSnackBar(
//                 context,
//                 text: 'This Is Correct 🥳',
//                 color: Colors.green,
//                 // player.play'true.wav');
//                 // player.play('true.wav');
//                 // player.duckAudio()
//               );
//             } else {
//               Utils.showSnackBar(
//                 context,
//                 text: 'This Looks Wrong 🤔',
//                 color: Colors.red,
//               );
//             }

//             onAccept(data);
//           },
//         ),
//       );

//   Widget buildText(String text) => Container(
//         decoration: BoxDecoration(boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.8),
//             blurRadius: 12,
//           )
//         ]),
//         child: Text(
//           text,
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 24,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       );
// }
