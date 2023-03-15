import 'package:flutter/material.dart';
import 'package:food_delivery_app/pages/food/recommanded_food_detail.dart';

import '/helper/dependecies.dart' as depedencies;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await depedencies.init();
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
      home: RecommendFoodDetail(),
    );
  }
}
