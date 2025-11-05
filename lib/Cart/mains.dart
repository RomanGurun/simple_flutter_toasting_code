import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:go_router/go_router.dart';
import 'dart:convert';
import 'routes.dart';

List<Map<String, dynamic>> cartItems = [];

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await loadCartData();
  runApp(const MyApp());
}

// Load cart data from SharedPreferences
Future<void> loadCartData() async {
  final prefs = await SharedPreferences.getInstance();
  final String? cartString = prefs.getString('cartData');
  if (cartString != null) {
    final List decoded = jsonDecode(cartString);
    cartItems = decoded.map((e) => Map<String, dynamic>.from(e)).toList();
  }
}

// Save cart data
Future<void> saveCartData() async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setString('cartData', jsonEncode(cartItems));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'GoRouter Shop App',
      routerConfig: router,
    );
  }
}
