import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(title: Text("Home Page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                context.go('/about');
              },
              child: const Text("Go to about page"),
            ),
            ElevatedButton(
              onPressed: () => context.go('/profile/roman'),
              child: Text("Go to Profile(with Path PAram"),
            ),
            ElevatedButton(
              onPressed: () => context.pushNamed(
                'details',
                extra: 'This is extra data passed by Roman Gurung!',
              ),
              child: Text("Go to Details(with Extra Data"),
            ),
          ],
        ),
      ),
    );
  }
}
