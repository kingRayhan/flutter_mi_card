import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(AppRoot());
}

class AppRoot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(child: HomeScreen()),
        backgroundColor: Colors.black87,
      ),
    );
  }
}
