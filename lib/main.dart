import 'package:flutter/material.dart';
import 'package:ticket/screens/home_screen.dart';
import 'package:ticket/utils/app_styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter demo",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: primary),
      home: const HomeScreen(),
    );
  }
}
