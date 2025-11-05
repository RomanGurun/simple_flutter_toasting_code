import 'package:flutter/material.dart';
import 'package:simpleui/diagram.dart';
class  MyApp extends StatefulWidget {

   MyApp({super.key});

  @override
  State<MyApp> createState() => _State();
}

class _State extends State<MyApp> {
  final List<String> item= [
    "Hello ",
    "one",
        "Hello ",
    "Hello ",
    "Hello ",
    "Hello ",
    "Hello ",
    "Hello ",
    "Hello ",
    "Hello ",
    "Hello ",
    "Hello ",
    "Hello ",
    "Hello ",
    "Hello ",
    "Hello ",
    "Hello ",
    "Hello ",
    "Hello ",
    "Hello ",
    "Hello ",
    "Hello ",
    "Hello ",
    "Hello ",






  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body:Expanded(
       child: ListView.builder(
         // scrollDirection: Axis.vertical,
         itemCount: item.length,
         itemBuilder: (context,index){
           return  PlaceHolder();


         },

       ),
     )
    );
  }
}


void main() {
  runApp(const SortingVisualizerApp());
}

class SortingVisualizerApp extends StatelessWidget {
  const SortingVisualizerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sorting Visualizer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  MyApp(),
    );
  }
}
