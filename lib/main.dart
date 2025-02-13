import 'package:e_commerce_app/bottom_nav_bar/bottom_nav_page.dart';
import 'package:e_commerce_app/bottom_nav_bar/nav_carts_pages/my_cart_page.dart';
import 'package:e_commerce_app/bottom_nav_bar/nav_home_pages/item_view_page.dart';
import 'package:e_commerce_app/rough_work.dart';
import 'package:flutter/material.dart';

import 'bottom_nav_bar/nav_home_pages/home_page.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E Commerce',
      home: BottomNavPage(),
    );
  }
}

