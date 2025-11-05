import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'counter_model.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool showCounter = true; // Local state inside the widget

  @override
  Widget build(BuildContext context) {
    final counter = context.watch<CounterModel>(); // Provider state

    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (showCounter)
            Text('Count: ${counter.count}', style: TextStyle(fontSize: 30)),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              setState(() => showCounter = !showCounter); // toggle local state
            },
            child: Text(showCounter ? 'Hide Counter' : 'Show Counter'),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => GoRouter.of(context).go('/second'),
            child: Text('Go to Second Page'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: counter.increment, // update Provider state
        child: Icon(Icons.add),
      ),
    );
  }
}
