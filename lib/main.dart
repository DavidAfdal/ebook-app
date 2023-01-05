import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/bottom_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ebook App',
      home: BottomNavBar(),
    );
  }
}
