import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';

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
      home: const SortingHomePage(),
    );
  }
}

class SortingHomePage extends StatefulWidget {
  const SortingHomePage({super.key});

  @override
  State<SortingHomePage> createState() => _SortingHomePageState();
}

class _SortingHomePageState extends State<SortingHomePage> {
  List<int> numbers = [];
  bool isSorting = false;

  @override
  void initState() {
    super.initState();
    _generateRandomList();
  }

  void _generateRandomList() {
    final random = Random();
    setState(() {
      numbers = List.generate(20, (_) => random.nextInt(200) + 50);
    });
  }

  Future<void> _bubbleSort() async {
    setState(() => isSorting = true);
    for (int i = 0; i < numbers.length - 1; i++) {
      for (int j = 0; j < numbers.length - i - 1; j++) {
        if (numbers[j] > numbers[j + 1]) {
          // Swap
          int temp = numbers[j];
          numbers[j] = numbers[j + 1];
          numbers[j + 1] = temp;

          setState(() {}); // Refresh UI
          await Future.delayed(const Duration(milliseconds: 100));
        }
      }
    }
    setState(() => isSorting = false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sorting Visualizer'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: numbers.map((num) {
                  return Container(
                    width: 15,
                    height: num.toDouble(),
                    color: Colors.blue,
                  );
                }).toList(),
              ),
            ),
          ),
          const SizedBox(height: 20),
          if (!isSorting)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  icon: const Icon(Icons.refresh),
                  onPressed: _generateRandomList,
                  label: const Text("New List"),
                ),
                ElevatedButton.icon(
                  icon: const Icon(Icons.sort),
                  onPressed: _bubbleSort,
                  label: const Text("Sort"),
                ),
              ],
            )
          else
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: CircularProgressIndicator(),
            ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
