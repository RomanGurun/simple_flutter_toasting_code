import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page 3')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.go('/page1'),
          child: const Text('Go to Page 1'),
        ),
      ),
    );
  }
}
