import 'package:flutter/material.dart';
import 'package:shoes_app/pages/HomePage.dart';
import 'package:shoes_app/pages/CartPage.dart';
import 'package:shoes_app/pages/itemPage.dart';
import 'package:shoes_app/widgets/itemAppBar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      routes: {
        "/": (context) => const Homepage(),
        "cartPage": (context) => const Cartpage(),
        "itemPage": (context) => ItemAppBar(),
      },
    );
  }
}
