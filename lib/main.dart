import 'package:flutter/material.dart';
import 'package:mit_slicing/bottom_navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MIT Slicing Test',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Poppins",
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff0D0D0D)),
        useMaterial3: true,
      ),
      home: BottomNavbar(),
    );
  }
}
