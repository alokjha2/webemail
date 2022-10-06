import 'package:flutter/material.dart';
import 'package:uiweb/screens/main/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Web',
      home: MainScreen(),
      debugShowCheckedModeBanner: true,
      
    );
  }
}



