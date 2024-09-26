import 'package:ayutthaya1/images.dart';
import 'package:ayutthaya1/profile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ProfilePage(),  // Call HomePage from the imported file
      ),
    );
  }
}