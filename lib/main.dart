import 'package:flutter/material.dart';
import 'package:nav_drwr/home_screen.dart';
import 'package:nav_drwr/screen_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id  : (context) => HomeScreen(),
        ScreenTwo.id : (context) => ScreenTwo(),
      },
    );
  }
}

