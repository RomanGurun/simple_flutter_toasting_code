import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'home.dart';
import 'page1.dart';
import 'page2.dart';
import 'page3.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/page1',
      builder: (context, state) => const Page1(),
    ),
    GoRoute(
      path: '/page2',
      builder: (context, state) => const Page2(),
    ),
    GoRoute(
      path: '/page3',
      builder: (context, state) => const Page3(),
    ),
  ],
);
