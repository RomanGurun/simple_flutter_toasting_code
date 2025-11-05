import 'package:flutter/material.dart';
import 'routes.dart';
void main(){
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'GoRoute Demo',
      routerConfig: router,
    );
  }
}