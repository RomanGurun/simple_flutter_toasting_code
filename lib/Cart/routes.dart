import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:simpleui/Cart/product_list_page.dart';
import 'cart_page.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const ProductListPage(),
    ),
    GoRoute(
      path: '/cart',
      builder: (context, state) => const CartPage(),
    ),
  ],
);
