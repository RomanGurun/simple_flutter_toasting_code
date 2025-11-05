import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';
import 'about_pages.dart';
import 'details_page.dart';
import 'profile_page.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: 'home',
      builder: (context, state) =>  HomePage(),
    ),

    GoRoute(
      path: '/about',
      name: 'about',
      builder: (context, state) =>  AboutPage(),
    ),
    GoRoute(path: '/detail',
    name:'details',
    builder: (context,state){
      final extraDta = state.extra as String;
      return DetailsPage(info : extraDta ?? 'No extra Data');

    }

    ),

    GoRoute(
      path: '/profile/:username',
      name: 'profile',
      builder: (context, state) {
        final extraDate = state.extra as String?;
        return DetailsPage(info: extraDate ?? 'No extra data');
      },
    ),
  ],
);
