
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:udemy/models/shop.dart';
import 'package:udemy/pages/cart_page.dart';
import 'package:udemy/pages/splash_screen.dart';
import 'pages/intro_page.dart';
import 'pages/menu_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Shop(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SplachScreen(),
      routes: {
        '/intropage': (context) => IntroPage(),
        '/menupage': (context) => MenuPage(),
        '/cartpage': (context) => CartPage(),
      },
    );
  }
}
