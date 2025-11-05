import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  Future<void> _goHome(BuildContext context) async {
    final result = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Go Home?'),
        content: const Text('Do you want to go back to the Home Page?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text('Yes'),
          ),
        ],
      ),
    );

    if (result == true) {
      context.go('/');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page 1')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _goHome(context),
          child: const Text('Go Home with Popup'),
        ),
      ),
    );
  }
}
