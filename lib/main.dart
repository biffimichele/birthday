import 'package:flutter/material.dart';
import 'package:travel/screens/home_screen.dart';
import 'package:travel/widgets/mobile_frame.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MobileFrame(
        child: HomeScreen(),
      ),
    );
  }
}
