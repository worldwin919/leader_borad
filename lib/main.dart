import 'package:flutter/material.dart';
import 'package:leader_borad/Screens/EarthHome.dart';
import 'package:leader_borad/Screens/HPage.dart';
import 'package:leader_borad/Screens/SignUp.dart';
import 'package:leader_borad/homepa.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  SignUp(),
    );
  }
}

