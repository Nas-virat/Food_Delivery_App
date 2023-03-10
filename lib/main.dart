import 'package:flutter/material.dart';
import 'package:food_delivery_app/pages/food/popular_food__deatil.dart';

import 'pages/home/main_food_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'food app',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PopularFoodDetail(),
    );
  }
}
