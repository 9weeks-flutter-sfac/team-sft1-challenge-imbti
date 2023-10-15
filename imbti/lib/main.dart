// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:imbti/models/result_model.dart';
import 'package:imbti/screens/home_screen.dart';
import 'package:imbti/screens/reulst_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Pretendard'),
      home: Scaffold(
        body: HomeScreen(),
      ),
    );
  }
}
